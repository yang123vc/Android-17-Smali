.class public final Landroid/webkit/URLUtil;
.super Ljava/lang/Object;
.source "URLUtil.java"


# static fields
.field static final ASSET_BASE:Ljava/lang/String; = "file:///android_asset/"

.field private static final CONTENT_DISPOSITION_PATTERN:Ljava/util/regex/Pattern;

.field static final FILE_BASE:Ljava/lang/String; = "file://"

.field private static final LOGTAG:Ljava/lang/String; = "webkit"

.field static final PROXY_BASE:Ljava/lang/String; = "file:///cookieless_proxy/"

.field static final RESOURCE_BASE:Ljava/lang/String; = "file:///android_res/"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 384
    const-string v0, "attachment;\\s*filename\\s*=\\s*(\"?)([^\"]*)\\1\\s*$"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/webkit/URLUtil;->CONTENT_DISPOSITION_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static composeSearchUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "inQuery"    # Ljava/lang/String;
    .param p1, "template"    # Ljava/lang/String;
    .param p2, "queryPlaceHolder"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 86
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 87
    .local v2, "placeHolderIndex":I
    if-gez v2, :cond_8

    .line 105
    :goto_7
    return-object v4

    .line 92
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    invoke-virtual {p1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    :try_start_15
    const-string/jumbo v5, "utf-8"

    invoke-static {p0, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 97
    .local v3, "query":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_15 .. :try_end_1f} :catch_30

    .line 102
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_7

    .line 98
    .end local v3    # "query":Ljava/lang/String;
    :catch_30
    move-exception v1

    .line 99
    .local v1, "ex":Ljava/io/UnsupportedEncodingException;
    goto :goto_7
.end method

.method public static decode([B)[B
    .registers 10
    .param p0, "url"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 109
    array-length v6, p0

    if-nez v6, :cond_7

    .line 110
    new-array v2, v8, [B

    .line 132
    :goto_6
    return-object v2

    .line 114
    :cond_7
    array-length v6, p0

    new-array v5, v6, [B

    .line 116
    .local v5, "tempData":[B
    const/4 v3, 0x0

    .line 117
    .local v3, "tempCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    array-length v6, p0

    if-ge v1, v6, :cond_40

    .line 118
    aget-byte v0, p0, v1

    .line 119
    .local v0, "b":B
    const/16 v6, 0x25

    if-ne v0, v6, :cond_30

    .line 120
    array-length v6, p0

    sub-int/2addr v6, v1

    const/4 v7, 0x2

    if-le v6, v7, :cond_38

    .line 121
    add-int/lit8 v6, v1, 0x1

    aget-byte v6, p0, v6

    invoke-static {v6}, Landroid/webkit/URLUtil;->parseHex(B)I

    move-result v6

    mul-int/lit8 v6, v6, 0x10

    add-int/lit8 v7, v1, 0x2

    aget-byte v7, p0, v7

    invoke-static {v7}, Landroid/webkit/URLUtil;->parseHex(B)I

    move-result v7

    add-int/2addr v6, v7

    int-to-byte v0, v6

    .line 123
    add-int/lit8 v1, v1, 0x2

    .line 128
    :cond_30
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "tempCount":I
    .local v4, "tempCount":I
    aput-byte v0, v5, v3

    .line 117
    add-int/lit8 v1, v1, 0x1

    move v3, v4

    .end local v4    # "tempCount":I
    .restart local v3    # "tempCount":I
    goto :goto_c

    .line 125
    :cond_38
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Invalid format"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 130
    .end local v0    # "b":B
    :cond_40
    new-array v2, v3, [B

    .line 131
    .local v2, "retData":[B
    invoke-static {v5, v8, v2, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_6
.end method

.method public static final guessFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 15
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "contentDisposition"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    const/16 v11, 0x2f

    const/16 v9, 0x2e

    const/4 v10, 0x0

    .line 302
    const/4 v3, 0x0

    .line 303
    .local v3, "filename":Ljava/lang/String;
    const/4 v2, 0x0

    .line 306
    .local v2, "extension":Ljava/lang/String;
    if-nez v3, :cond_1d

    if-eqz p1, :cond_1d

    .line 307
    invoke-static {p1}, Landroid/webkit/URLUtil;->parseContentDisposition(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 308
    if-eqz v3, :cond_1d

    .line 309
    invoke-virtual {v3, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    add-int/lit8 v4, v8, 0x1

    .line 310
    .local v4, "index":I
    if-lez v4, :cond_1d

    .line 311
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 317
    .end local v4    # "index":I
    :cond_1d
    if-nez v3, :cond_45

    .line 318
    invoke-static {p0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 319
    .local v0, "decodedUrl":Ljava/lang/String;
    if-eqz v0, :cond_45

    .line 320
    const/16 v8, 0x3f

    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 322
    .local v6, "queryIndex":I
    if-lez v6, :cond_31

    .line 323
    invoke-virtual {v0, v10, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 325
    :cond_31
    const-string v8, "/"

    invoke-virtual {v0, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_45

    .line 326
    invoke-virtual {v0, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    add-int/lit8 v4, v8, 0x1

    .line 327
    .restart local v4    # "index":I
    if-lez v4, :cond_45

    .line 328
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 335
    .end local v0    # "decodedUrl":Ljava/lang/String;
    .end local v4    # "index":I
    .end local v6    # "queryIndex":I
    :cond_45
    if-nez v3, :cond_49

    .line 336
    const-string v3, "downloadfile"

    .line 341
    :cond_49
    invoke-virtual {v3, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 342
    .local v1, "dotIndex":I
    if-gez v1, :cond_a2

    .line 343
    if-eqz p2, :cond_6e

    .line 344
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v8

    invoke-virtual {v8, p2}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 345
    if-eqz v2, :cond_6e

    .line 346
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 349
    :cond_6e
    if-nez v2, :cond_8a

    .line 350
    if-eqz p2, :cond_9f

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "text/"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9f

    .line 351
    const-string/jumbo v8, "text/html"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9c

    .line 352
    const-string v2, ".html"

    .line 380
    :cond_8a
    :goto_8a
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 354
    :cond_9c
    const-string v2, ".txt"

    goto :goto_8a

    .line 357
    :cond_9f
    const-string v2, ".bin"

    goto :goto_8a

    .line 361
    :cond_a2
    if-eqz p2, :cond_db

    .line 364
    invoke-virtual {v3, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    .line 365
    .local v5, "lastDotIndex":I
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v8

    add-int/lit8 v9, v5, 0x1

    invoke-virtual {v3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 367
    .local v7, "typeFromExt":Ljava/lang/String;
    if-eqz v7, :cond_db

    invoke-virtual {v7, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_db

    .line 368
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v8

    invoke-virtual {v8, p2}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 369
    if-eqz v2, :cond_db

    .line 370
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 374
    .end local v5    # "lastDotIndex":I
    .end local v7    # "typeFromExt":Ljava/lang/String;
    :cond_db
    if-nez v2, :cond_e1

    .line 375
    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 377
    :cond_e1
    invoke-virtual {v3, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_8a
.end method

.method public static guessUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "inUrl"    # Ljava/lang/String;

    .prologue
    .line 47
    move-object v1, p0

    .line 52
    .local v1, "retVal":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_8

    .line 81
    .end local p0    # "inUrl":Ljava/lang/String;
    :cond_7
    :goto_7
    return-object p0

    .line 53
    .restart local p0    # "inUrl":Ljava/lang/String;
    :cond_8
    const-string v3, "about:"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 55
    const-string v3, "data:"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 57
    const-string v3, "file:"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 59
    const-string v3, "javascript:"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 62
    const-string v3, "."

    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3c

    .line 63
    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 67
    :cond_3c
    :try_start_3c
    new-instance v2, Landroid/net/WebAddress;

    invoke-direct {v2, p0}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V
    :try_end_41
    .catch Landroid/net/ParseException; {:try_start_3c .. :try_end_41} :catch_74

    .line 77
    .local v2, "webAddress":Landroid/net/WebAddress;
    invoke-virtual {v2}, Landroid/net/WebAddress;->getHost()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_6f

    .line 79
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "www."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/net/WebAddress;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".com"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/WebAddress;->setHost(Ljava/lang/String;)V

    .line 81
    :cond_6f
    invoke-virtual {v2}, Landroid/net/WebAddress;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_7

    .line 68
    .end local v2    # "webAddress":Landroid/net/WebAddress;
    :catch_74
    move-exception v0

    .local v0, "ex":Landroid/net/ParseException;
    move-object p0, v1

    .line 73
    goto :goto_7
.end method

.method public static isAboutUrl(Ljava/lang/String;)Z
    .registers 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 207
    if-eqz p0, :cond_c

    const-string v0, "about:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static isAssetUrl(Ljava/lang/String;)Z
    .registers 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 173
    if-eqz p0, :cond_c

    const-string v0, "file:///android_asset/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static isContentUrl(Ljava/lang/String;)Z
    .registers 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 256
    if-eqz p0, :cond_c

    const-string v0, "content:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static isCookielessProxyUrl(Ljava/lang/String;)Z
    .registers 2
    .param p0, "url"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 191
    if-eqz p0, :cond_c

    const-string v0, "file:///cookieless_proxy/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static isDataUrl(Ljava/lang/String;)Z
    .registers 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 214
    if-eqz p0, :cond_c

    const-string v0, "data:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static isFileUrl(Ljava/lang/String;)Z
    .registers 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 198
    if-eqz p0, :cond_1c

    const-string v0, "file://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string v0, "file:///android_asset/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    const-string v0, "file:///cookieless_proxy/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public static isHttpUrl(Ljava/lang/String;)Z
    .registers 4
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 228
    if-eqz p0, :cond_18

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-le v1, v2, :cond_18

    const/4 v1, 0x7

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    const/4 v0, 0x1

    :cond_18
    return v0
.end method

.method public static isHttpsUrl(Ljava/lang/String;)Z
    .registers 4
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 237
    if-eqz p0, :cond_19

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x7

    if-le v1, v2, :cond_19

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    const/4 v0, 0x1

    :cond_19
    return v0
.end method

.method public static isJavaScriptUrl(Ljava/lang/String;)Z
    .registers 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 221
    if-eqz p0, :cond_c

    const-string v0, "javascript:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static isNetworkUrl(Ljava/lang/String;)Z
    .registers 3
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 246
    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    .line 249
    :cond_9
    :goto_9
    return v0

    :cond_a
    invoke-static {p0}, Landroid/webkit/URLUtil;->isHttpUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_16

    invoke-static {p0}, Landroid/webkit/URLUtil;->isHttpsUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_16
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public static isResourceUrl(Ljava/lang/String;)Z
    .registers 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 181
    if-eqz p0, :cond_c

    const-string v0, "file:///android_res/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static isValidUrl(Ljava/lang/String;)Z
    .registers 3
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 263
    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    .line 267
    :cond_9
    :goto_9
    return v0

    :cond_a
    invoke-static {p0}, Landroid/webkit/URLUtil;->isAssetUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3a

    invoke-static {p0}, Landroid/webkit/URLUtil;->isResourceUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3a

    invoke-static {p0}, Landroid/webkit/URLUtil;->isFileUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3a

    invoke-static {p0}, Landroid/webkit/URLUtil;->isAboutUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3a

    invoke-static {p0}, Landroid/webkit/URLUtil;->isHttpUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3a

    invoke-static {p0}, Landroid/webkit/URLUtil;->isHttpsUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3a

    invoke-static {p0}, Landroid/webkit/URLUtil;->isJavaScriptUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3a

    invoke-static {p0}, Landroid/webkit/URLUtil;->isContentUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_3a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method static parseContentDisposition(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "contentDisposition"    # Ljava/lang/String;

    .prologue
    .line 399
    :try_start_0
    sget-object v1, Landroid/webkit/URLUtil;->CONTENT_DISPOSITION_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 400
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 401
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_10} :catch_12

    move-result-object v1

    .line 406
    .end local v0    # "m":Ljava/util/regex/Matcher;
    :goto_11
    return-object v1

    .line 403
    :catch_12
    move-exception v1

    .line 406
    :cond_13
    const/4 v1, 0x0

    goto :goto_11
.end method

.method private static parseHex(B)I
    .registers 4
    .param p0, "b"    # B

    .prologue
    .line 162
    const/16 v0, 0x30

    if-lt p0, v0, :cond_b

    const/16 v0, 0x39

    if-gt p0, v0, :cond_b

    add-int/lit8 v0, p0, -0x30

    .line 164
    :goto_a
    return v0

    .line 163
    :cond_b
    const/16 v0, 0x41

    if-lt p0, v0, :cond_18

    const/16 v0, 0x46

    if-gt p0, v0, :cond_18

    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_a

    .line 164
    :cond_18
    const/16 v0, 0x61

    if-lt p0, v0, :cond_25

    const/16 v0, 0x66

    if-gt p0, v0, :cond_25

    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_a

    .line 166
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid hex char \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static stripAnchor(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 281
    const/16 v1, 0x23

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 282
    .local v0, "anchorIndex":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_e

    .line 283
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 285
    .end local p0    # "url":Ljava/lang/String;
    :cond_e
    return-object p0
.end method

.method static verifyURLEncoding(Ljava/lang/String;)Z
    .registers 7
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x25

    const/4 v3, 0x0

    .line 139
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 140
    .local v0, "count":I
    if-nez v0, :cond_a

    .line 158
    :cond_9
    :goto_9
    return v3

    .line 144
    :cond_a
    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 145
    .local v2, "index":I
    :goto_e
    if-ltz v2, :cond_33

    if-ge v2, v0, :cond_33

    .line 146
    add-int/lit8 v4, v0, -0x2

    if-ge v2, v4, :cond_9

    .line 148
    add-int/lit8 v2, v2, 0x1

    :try_start_18
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    int-to-byte v4, v4

    invoke-static {v4}, Landroid/webkit/URLUtil;->parseHex(B)I

    .line 149
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    int-to-byte v4, v4

    invoke-static {v4}, Landroid/webkit/URLUtil;->parseHex(B)I
    :try_end_2a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_18 .. :try_end_2a} :catch_31

    .line 156
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    goto :goto_e

    .line 150
    :catch_31
    move-exception v1

    .line 151
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_9

    .line 158
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :cond_33
    const/4 v3, 0x1

    goto :goto_9
.end method
