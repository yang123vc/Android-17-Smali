.class Landroid/webkit/FileLoader;
.super Landroid/webkit/StreamLoader;
.source "FileLoader.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "webkit"

.field static final TYPE_ASSET:I = 0x1

.field static final TYPE_FILE:I = 0x3

.field static final TYPE_RES:I = 0x2


# instance fields
.field private mAllowFileAccess:Z

.field private mPath:Ljava/lang/String;

.field private mType:I


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/webkit/LoadListener;IZ)V
    .registers 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "loadListener"    # Landroid/webkit/LoadListener;
    .param p3, "type"    # I
    .param p4, "allowFileAccess"    # Z

    .prologue
    .line 63
    invoke-direct {p0, p2}, Landroid/webkit/StreamLoader;-><init>(Landroid/webkit/LoadListener;)V

    .line 64
    iput p3, p0, Landroid/webkit/FileLoader;->mType:I

    .line 65
    iput-boolean p4, p0, Landroid/webkit/FileLoader;->mAllowFileAccess:Z

    .line 68
    const/16 v1, 0x3f

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 69
    .local v0, "index":I
    iget v1, p0, Landroid/webkit/FileLoader;->mType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_34

    .line 70
    if-lez v0, :cond_25

    const-string v1, "file:///android_asset/"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/webkit/URLUtil;->stripAnchor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_22
    iput-object v1, p0, Landroid/webkit/FileLoader;->mPath:Ljava/lang/String;

    .line 85
    :goto_24
    return-void

    .line 70
    :cond_25
    const-string v1, "file:///android_asset/"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/webkit/URLUtil;->stripAnchor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_22

    .line 74
    :cond_34
    iget v1, p0, Landroid/webkit/FileLoader;->mType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5b

    .line 75
    if-lez v0, :cond_4c

    const-string v1, "file:///android_res/"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/webkit/URLUtil;->stripAnchor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_49
    iput-object v1, p0, Landroid/webkit/FileLoader;->mPath:Ljava/lang/String;

    goto :goto_24

    :cond_4c
    const-string v1, "file:///android_res/"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/webkit/URLUtil;->stripAnchor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_49

    .line 80
    :cond_5b
    if-lez v0, :cond_6e

    const-string v1, "file://"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/webkit/URLUtil;->stripAnchor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_6b
    iput-object v1, p0, Landroid/webkit/FileLoader;->mPath:Ljava/lang/String;

    goto :goto_24

    :cond_6e
    const-string v1, "file://"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/webkit/URLUtil;->stripAnchor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_6b
.end method

.method private errString(Ljava/lang/Exception;)Ljava/lang/String;
    .registers 6
    .param p1, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 88
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, "exMessage":Ljava/lang/String;
    iget-object v2, p0, Landroid/webkit/FileLoader;->mContext:Landroid/content/Context;

    const v3, 0x1040117

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "errString":Ljava/lang/String;
    if-eqz v1, :cond_26

    .line 91
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 93
    :cond_26
    return-object v0
.end method


# virtual methods
.method protected buildHeaders(Landroid/net/http/Headers;)V
    .registers 2
    .param p1, "headers"    # Landroid/net/http/Headers;

    .prologue
    .line 188
    return-void
.end method

.method protected setupStreamAndSendStatus()Z
    .registers 18

    .prologue
    .line 99
    :try_start_0
    move-object/from16 v0, p0

    iget v12, v0, Landroid/webkit/FileLoader;->mType:I
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_4} :catch_40
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_243

    const/4 v13, 0x1

    if-ne v12, v13, :cond_52

    .line 101
    :try_start_7
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/webkit/FileLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/FileLoader;->mPath:Ljava/lang/String;

    invoke-virtual {v12, v13}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/webkit/FileLoader;->mDataStream:Ljava/io/InputStream;
    :try_end_1b
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_1b} :catch_2a
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_1b} :catch_243

    .line 172
    :cond_1b
    :goto_1b
    :try_start_1b
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/webkit/FileLoader;->mLoadListener:Landroid/webkit/LoadListener;

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/16 v15, 0xc8

    const-string v16, "OK"

    invoke-virtual/range {v12 .. v16}, Landroid/webkit/LoadListener;->status(IIILjava/lang/String;)V

    .line 182
    const/4 v12, 0x1

    :goto_29
    return v12

    .line 102
    :catch_2a
    move-exception v5

    .line 104
    .local v5, "ex":Ljava/io/FileNotFoundException;
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/webkit/FileLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/FileLoader;->mPath:Ljava/lang/String;

    invoke-virtual {v12, v13}, Landroid/content/res/AssetManager;->openNonAsset(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/webkit/FileLoader;->mDataStream:Ljava/io/InputStream;
    :try_end_3f
    .catch Ljava/io/FileNotFoundException; {:try_start_1b .. :try_end_3f} :catch_40
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_3f} :catch_243

    goto :goto_1b

    .line 174
    .end local v5    # "ex":Ljava/io/FileNotFoundException;
    :catch_40
    move-exception v5

    .line 175
    .restart local v5    # "ex":Ljava/io/FileNotFoundException;
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/webkit/FileLoader;->mLoadListener:Landroid/webkit/LoadListener;

    const/16 v13, -0xe

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/webkit/FileLoader;->errString(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/webkit/LoadListener;->error(ILjava/lang/String;)V

    .line 176
    const/4 v12, 0x0

    goto :goto_29

    .line 106
    .end local v5    # "ex":Ljava/io/FileNotFoundException;
    :cond_52
    :try_start_52
    move-object/from16 v0, p0

    iget v12, v0, Landroid/webkit/FileLoader;->mType:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_206

    .line 110
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/webkit/FileLoader;->mPath:Ljava/lang/String;

    if-eqz v12, :cond_69

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/webkit/FileLoader;->mPath:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_87

    .line 111
    :cond_69
    const-string/jumbo v12, "webkit"

    const-string v13, "Need a path to resolve the res file"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/webkit/FileLoader;->mLoadListener:Landroid/webkit/LoadListener;

    const/16 v13, -0xd

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/webkit/FileLoader;->mContext:Landroid/content/Context;

    const v15, 0x1040117

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/webkit/LoadListener;->error(ILjava/lang/String;)V

    .line 114
    const/4 v12, 0x0

    goto :goto_29

    .line 117
    :cond_87
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/webkit/FileLoader;->mPath:Ljava/lang/String;

    const/16 v13, 0x2f

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    .line 118
    .local v9, "slash":I
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/webkit/FileLoader;->mPath:Ljava/lang/String;

    const/16 v13, 0x2e

    invoke-virtual {v12, v13, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 119
    .local v2, "dot":I
    const/4 v12, -0x1

    if-eq v9, v12, :cond_a1

    const/4 v12, -0x1

    if-ne v2, v12, :cond_d5

    .line 120
    :cond_a1
    const-string/jumbo v12, "webkit"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Incorrect res path: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/webkit/FileLoader;->mPath:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/webkit/FileLoader;->mLoadListener:Landroid/webkit/LoadListener;

    const/16 v13, -0xd

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/webkit/FileLoader;->mContext:Landroid/content/Context;

    const v15, 0x1040117

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/webkit/LoadListener;->error(ILjava/lang/String;)V

    .line 123
    const/4 v12, 0x0

    goto/16 :goto_29

    .line 125
    :cond_d5
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/webkit/FileLoader;->mPath:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-virtual {v12, v13, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 126
    .local v10, "subClassName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/webkit/FileLoader;->mPath:Ljava/lang/String;

    add-int/lit8 v13, v9, 0x1

    invoke-virtual {v12, v13, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_e7
    .catch Ljava/io/FileNotFoundException; {:try_start_52 .. :try_end_e7} :catch_40
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_e7} :catch_243

    move-result-object v7

    .line 127
    .local v7, "fieldName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 129
    .local v4, "errorMsg":Ljava/lang/String;
    :try_start_e9
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/webkit/FileLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/webkit/FileLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".R$"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 133
    .local v1, "d":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 134
    .local v6, "field":Ljava/lang/reflect/Field;
    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v8

    .line 135
    .local v8, "id":I
    new-instance v11, Landroid/util/TypedValue;

    invoke-direct {v11}, Landroid/util/TypedValue;-><init>()V

    .line 136
    .local v11, "value":Landroid/util/TypedValue;
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/webkit/FileLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v8, v11, v13}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 137
    iget v12, v11, Landroid/util/TypedValue;->type:I

    const/4 v13, 0x3

    if-ne v12, v13, :cond_169

    .line 138
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/webkit/FileLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v12

    iget v13, v11, Landroid/util/TypedValue;->assetCookie:I

    iget-object v14, v11, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x2

    invoke-virtual {v12, v13, v14, v15}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/webkit/FileLoader;->mDataStream:Ljava/io/InputStream;
    :try_end_150
    .catch Ljava/lang/ClassNotFoundException; {:try_start_e9 .. :try_end_150} :catch_16c
    .catch Ljava/lang/SecurityException; {:try_start_e9 .. :try_end_150} :catch_193
    .catch Ljava/lang/NoSuchFieldException; {:try_start_e9 .. :try_end_150} :catch_1a8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e9 .. :try_end_150} :catch_1da
    .catch Ljava/lang/IllegalAccessException; {:try_start_e9 .. :try_end_150} :catch_1f0
    .catch Ljava/io/FileNotFoundException; {:try_start_e9 .. :try_end_150} :catch_40
    .catch Ljava/io/IOException; {:try_start_e9 .. :try_end_150} :catch_243

    .line 157
    .end local v1    # "d":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "field":Ljava/lang/reflect/Field;
    .end local v8    # "id":I
    .end local v11    # "value":Landroid/util/TypedValue;
    :goto_150
    if-eqz v4, :cond_1b

    .line 158
    :try_start_152
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/webkit/FileLoader;->mLoadListener:Landroid/webkit/LoadListener;

    const/16 v13, -0xd

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/webkit/FileLoader;->mContext:Landroid/content/Context;

    const v15, 0x1040117

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/webkit/LoadListener;->error(ILjava/lang/String;)V
    :try_end_166
    .catch Ljava/io/FileNotFoundException; {:try_start_152 .. :try_end_166} :catch_40
    .catch Ljava/io/IOException; {:try_start_152 .. :try_end_166} :catch_243

    .line 160
    const/4 v12, 0x0

    goto/16 :goto_29

    .line 142
    .restart local v1    # "d":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v6    # "field":Ljava/lang/reflect/Field;
    .restart local v8    # "id":I
    .restart local v11    # "value":Landroid/util/TypedValue;
    :cond_169
    :try_start_169
    const-string v4, "Only support TYPE_STRING for the res files"
    :try_end_16b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_169 .. :try_end_16b} :catch_16c
    .catch Ljava/lang/SecurityException; {:try_start_169 .. :try_end_16b} :catch_193
    .catch Ljava/lang/NoSuchFieldException; {:try_start_169 .. :try_end_16b} :catch_1a8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_169 .. :try_end_16b} :catch_1da
    .catch Ljava/lang/IllegalAccessException; {:try_start_169 .. :try_end_16b} :catch_1f0
    .catch Ljava/io/FileNotFoundException; {:try_start_169 .. :try_end_16b} :catch_40
    .catch Ljava/io/IOException; {:try_start_169 .. :try_end_16b} :catch_243

    goto :goto_150

    .line 144
    .end local v1    # "d":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "field":Ljava/lang/reflect/Field;
    .end local v8    # "id":I
    .end local v11    # "value":Landroid/util/TypedValue;
    :catch_16c
    move-exception v3

    .line 145
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    :try_start_16d
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Can\'t find class:  "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/FileLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".R$"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 156
    goto :goto_150

    .line 147
    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    :catch_193
    move-exception v3

    .line 148
    .local v3, "e":Ljava/lang/SecurityException;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Caught SecurityException: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 156
    goto :goto_150

    .line 149
    .end local v3    # "e":Ljava/lang/SecurityException;
    :catch_1a8
    move-exception v3

    .line 150
    .local v3, "e":Ljava/lang/NoSuchFieldException;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Can\'t find field:  "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " in "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/FileLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".R$"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 156
    goto/16 :goto_150

    .line 152
    .end local v3    # "e":Ljava/lang/NoSuchFieldException;
    :catch_1da
    move-exception v3

    .line 153
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Caught IllegalArgumentException: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 156
    goto/16 :goto_150

    .line 154
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1f0
    move-exception v3

    .line 155
    .local v3, "e":Ljava/lang/IllegalAccessException;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Caught IllegalAccessException: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_150

    .line 163
    .end local v2    # "dot":I
    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    .end local v4    # "errorMsg":Ljava/lang/String;
    .end local v7    # "fieldName":Ljava/lang/String;
    .end local v9    # "slash":I
    .end local v10    # "subClassName":Ljava/lang/String;
    :cond_206
    move-object/from16 v0, p0

    iget-boolean v12, v0, Landroid/webkit/FileLoader;->mAllowFileAccess:Z

    if-nez v12, :cond_223

    .line 164
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/webkit/FileLoader;->mLoadListener:Landroid/webkit/LoadListener;

    const/16 v13, -0xd

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/webkit/FileLoader;->mContext:Landroid/content/Context;

    const v15, 0x1040117

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/webkit/LoadListener;->error(ILjava/lang/String;)V

    .line 166
    const/4 v12, 0x0

    goto/16 :goto_29

    .line 169
    :cond_223
    new-instance v12, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/FileLoader;->mPath:Ljava/lang/String;

    invoke-direct {v12, v13}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/webkit/FileLoader;->mDataStream:Ljava/io/InputStream;

    .line 170
    new-instance v12, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/FileLoader;->mPath:Ljava/lang/String;

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Landroid/webkit/FileLoader;->mContentLength:J
    :try_end_241
    .catch Ljava/io/FileNotFoundException; {:try_start_16d .. :try_end_241} :catch_40
    .catch Ljava/io/IOException; {:try_start_16d .. :try_end_241} :catch_243

    goto/16 :goto_1b

    .line 178
    :catch_243
    move-exception v5

    .line 179
    .local v5, "ex":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/webkit/FileLoader;->mLoadListener:Landroid/webkit/LoadListener;

    const/16 v13, -0xd

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/webkit/FileLoader;->errString(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/webkit/LoadListener;->error(ILjava/lang/String;)V

    .line 180
    const/4 v12, 0x0

    goto/16 :goto_29
.end method
