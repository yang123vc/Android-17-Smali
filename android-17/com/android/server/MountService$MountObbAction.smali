.class Lcom/android/server/MountService$MountObbAction;
.super Lcom/android/server/MountService$ObbAction;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MountObbAction"
.end annotation


# instance fields
.field private final mKey:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;Ljava/lang/String;)V
    .registers 4
    .param p2, "obbState"    # Lcom/android/server/MountService$ObbState;
    .param p3, "key"    # Ljava/lang/String;

    .prologue
    .line 2241
    iput-object p1, p0, Lcom/android/server/MountService$MountObbAction;->this$0:Lcom/android/server/MountService;

    .line 2242
    invoke-direct {p0, p1, p2}, Lcom/android/server/MountService$ObbAction;-><init>(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;)V

    .line 2243
    iput-object p3, p0, Lcom/android/server/MountService$MountObbAction;->mKey:Ljava/lang/String;

    .line 2244
    return-void
.end method


# virtual methods
.method public handleError()V
    .registers 2

    .prologue
    .line 2329
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/android/server/MountService$MountObbAction;->sendNewStatusOrIgnore(I)V

    .line 2330
    return-void
.end method

.method public handleExecute()V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2248
    iget-object v11, p0, Lcom/android/server/MountService$MountObbAction;->this$0:Lcom/android/server/MountService;

    # invokes: Lcom/android/server/MountService;->waitForReady()V
    invoke-static {v11}, Lcom/android/server/MountService;->access$2400(Lcom/android/server/MountService;)V

    .line 2249
    iget-object v11, p0, Lcom/android/server/MountService$MountObbAction;->this$0:Lcom/android/server/MountService;

    # invokes: Lcom/android/server/MountService;->warnOnNotMounted()V
    invoke-static {v11}, Lcom/android/server/MountService;->access$2500(Lcom/android/server/MountService;)V

    .line 2251
    invoke-virtual {p0}, Lcom/android/server/MountService$MountObbAction;->getObbInfo()Landroid/content/res/ObbInfo;

    move-result-object v9

    .line 2253
    .local v9, "obbInfo":Landroid/content/res/ObbInfo;
    iget-object v11, p0, Lcom/android/server/MountService$MountObbAction;->this$0:Lcom/android/server/MountService;

    iget-object v12, v9, Landroid/content/res/ObbInfo;->packageName:Ljava/lang/String;

    iget-object v13, p0, Lcom/android/server/MountService$MountObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    iget v13, v13, Lcom/android/server/MountService$ObbState;->callerUid:I

    # invokes: Lcom/android/server/MountService;->isUidOwnerOfPackageOrSystem(Ljava/lang/String;I)Z
    invoke-static {v11, v12, v13}, Lcom/android/server/MountService;->access$2600(Lcom/android/server/MountService;Ljava/lang/String;I)Z

    move-result v11

    if-nez v11, :cond_48

    .line 2254
    const-string v11, "MountService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Denied attempt to mount OBB "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v9, Landroid/content/res/ObbInfo;->filename:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " which is owned by "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v9, Landroid/content/res/ObbInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2256
    const/16 v11, 0x19

    invoke-virtual {p0, v11}, Lcom/android/server/MountService$MountObbAction;->sendNewStatusOrIgnore(I)V

    .line 2325
    :goto_47
    return-void

    .line 2261
    :cond_48
    iget-object v11, p0, Lcom/android/server/MountService$MountObbAction;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;
    invoke-static {v11}, Lcom/android/server/MountService;->access$1900(Lcom/android/server/MountService;)Ljava/util/Map;

    move-result-object v12

    monitor-enter v12

    .line 2262
    :try_start_4f
    iget-object v11, p0, Lcom/android/server/MountService$MountObbAction;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;
    invoke-static {v11}, Lcom/android/server/MountService;->access$2000(Lcom/android/server/MountService;)Ljava/util/Map;

    move-result-object v11

    iget-object v13, v9, Landroid/content/res/ObbInfo;->filename:Ljava/lang/String;

    invoke-interface {v11, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    .line 2263
    .local v6, "isMounted":Z
    monitor-exit v12
    :try_end_5c
    .catchall {:try_start_4f .. :try_end_5c} :catchall_7e

    .line 2264
    if-eqz v6, :cond_81

    .line 2265
    const-string v11, "MountService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Attempt to mount OBB which is already mounted: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v9, Landroid/content/res/ObbInfo;->filename:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2266
    const/16 v11, 0x18

    invoke-virtual {p0, v11}, Lcom/android/server/MountService$MountObbAction;->sendNewStatusOrIgnore(I)V

    goto :goto_47

    .line 2263
    .end local v6    # "isMounted":Z
    :catchall_7e
    move-exception v11

    :try_start_7f
    monitor-exit v12
    :try_end_80
    .catchall {:try_start_7f .. :try_end_80} :catchall_7e

    throw v11

    .line 2274
    .restart local v6    # "isMounted":Z
    :cond_81
    iget-object v11, p0, Lcom/android/server/MountService$MountObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    iget-object v12, v9, Landroid/content/res/ObbInfo;->filename:Ljava/lang/String;

    iput-object v12, v11, Lcom/android/server/MountService$ObbState;->filename:Ljava/lang/String;

    .line 2277
    iget-object v11, p0, Lcom/android/server/MountService$MountObbAction;->mKey:Ljava/lang/String;

    if-nez v11, :cond_cc

    .line 2278
    const-string v5, "none"

    .line 2299
    .local v5, "hashedKey":Ljava/lang/String;
    :goto_8d
    const/4 v10, 0x0

    .line 2300
    .local v10, "rc":I
    const-string v11, "obb mount %s %s %d"

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget-object v14, p0, Lcom/android/server/MountService$MountObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    iget-object v14, v14, Lcom/android/server/MountService$ObbState;->filename:Ljava/lang/String;

    aput-object v14, v12, v13

    const/4 v13, 0x1

    aput-object v5, v12, v13

    const/4 v13, 0x2

    iget-object v14, p0, Lcom/android/server/MountService$MountObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    iget v14, v14, Lcom/android/server/MountService$ObbState;->callerUid:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2303
    .local v1, "cmd":Ljava/lang/String;
    :try_start_ac
    iget-object v11, p0, Lcom/android/server/MountService$MountObbAction;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;
    invoke-static {v11}, Lcom/android/server/MountService;->access$1400(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v11

    invoke-virtual {v11, v1}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_b5
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_ac .. :try_end_b5} :catch_115

    .line 2311
    :cond_b5
    :goto_b5
    if-nez v10, :cond_123

    .line 2315
    iget-object v11, p0, Lcom/android/server/MountService$MountObbAction;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;
    invoke-static {v11}, Lcom/android/server/MountService;->access$1900(Lcom/android/server/MountService;)Ljava/util/Map;

    move-result-object v12

    monitor-enter v12

    .line 2316
    :try_start_be
    iget-object v11, p0, Lcom/android/server/MountService$MountObbAction;->this$0:Lcom/android/server/MountService;

    iget-object v13, p0, Lcom/android/server/MountService$MountObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    # invokes: Lcom/android/server/MountService;->addObbStateLocked(Lcom/android/server/MountService$ObbState;)V
    invoke-static {v11, v13}, Lcom/android/server/MountService;->access$2700(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;)V

    .line 2317
    monitor-exit v12
    :try_end_c6
    .catchall {:try_start_be .. :try_end_c6} :catchall_120

    .line 2319
    const/4 v11, 0x1

    invoke-virtual {p0, v11}, Lcom/android/server/MountService$MountObbAction;->sendNewStatusOrIgnore(I)V

    goto/16 :goto_47

    .line 2281
    .end local v1    # "cmd":Ljava/lang/String;
    .end local v5    # "hashedKey":Ljava/lang/String;
    .end local v10    # "rc":I
    :cond_cc
    :try_start_cc
    const-string v11, "PBKDF2WithHmacSHA1"

    invoke-static {v11}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v4

    .line 2283
    .local v4, "factory":Ljavax/crypto/SecretKeyFactory;
    new-instance v8, Ljavax/crypto/spec/PBEKeySpec;

    iget-object v11, p0, Lcom/android/server/MountService$MountObbAction;->mKey:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->toCharArray()[C

    move-result-object v11

    iget-object v12, v9, Landroid/content/res/ObbInfo;->salt:[B

    const/16 v13, 0x400

    const/16 v14, 0x80

    invoke-direct {v8, v11, v12, v13, v14}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    .line 2285
    .local v8, "ks":Ljava/security/spec/KeySpec;
    invoke-virtual {v4, v8}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v7

    .line 2286
    .local v7, "key":Ljavax/crypto/SecretKey;
    new-instance v0, Ljava/math/BigInteger;

    invoke-interface {v7}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v11

    invoke-direct {v0, v11}, Ljava/math/BigInteger;-><init>([B)V

    .line 2287
    .local v0, "bi":Ljava/math/BigInteger;
    const/16 v11, 0x10

    invoke-virtual {v0, v11}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;
    :try_end_f5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_cc .. :try_end_f5} :catch_f7
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_cc .. :try_end_f5} :catch_106

    move-result-object v5

    .restart local v5    # "hashedKey":Ljava/lang/String;
    goto :goto_8d

    .line 2288
    .end local v0    # "bi":Ljava/math/BigInteger;
    .end local v4    # "factory":Ljavax/crypto/SecretKeyFactory;
    .end local v5    # "hashedKey":Ljava/lang/String;
    .end local v7    # "key":Ljavax/crypto/SecretKey;
    .end local v8    # "ks":Ljava/security/spec/KeySpec;
    :catch_f7
    move-exception v3

    .line 2289
    .local v3, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v11, "MountService"

    const-string v12, "Could not load PBKDF2 algorithm"

    invoke-static {v11, v12, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2290
    const/16 v11, 0x14

    invoke-virtual {p0, v11}, Lcom/android/server/MountService$MountObbAction;->sendNewStatusOrIgnore(I)V

    goto/16 :goto_47

    .line 2292
    .end local v3    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_106
    move-exception v3

    .line 2293
    .local v3, "e":Ljava/security/spec/InvalidKeySpecException;
    const-string v11, "MountService"

    const-string v12, "Invalid key spec when loading PBKDF2 algorithm"

    invoke-static {v11, v12, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2294
    const/16 v11, 0x14

    invoke-virtual {p0, v11}, Lcom/android/server/MountService$MountObbAction;->sendNewStatusOrIgnore(I)V

    goto/16 :goto_47

    .line 2304
    .end local v3    # "e":Ljava/security/spec/InvalidKeySpecException;
    .restart local v1    # "cmd":Ljava/lang/String;
    .restart local v5    # "hashedKey":Ljava/lang/String;
    .restart local v10    # "rc":I
    :catch_115
    move-exception v3

    .line 2305
    .local v3, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v3}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v2

    .line 2306
    .local v2, "code":I
    const/16 v11, 0x195

    if-eq v2, v11, :cond_b5

    .line 2307
    const/4 v10, -0x1

    goto :goto_b5

    .line 2317
    .end local v2    # "code":I
    .end local v3    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :catchall_120
    move-exception v11

    :try_start_121
    monitor-exit v12
    :try_end_122
    .catchall {:try_start_121 .. :try_end_122} :catchall_120

    throw v11

    .line 2321
    :cond_123
    const-string v11, "MountService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Couldn\'t mount OBB file: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2323
    const/16 v11, 0x15

    invoke-virtual {p0, v11}, Lcom/android/server/MountService$MountObbAction;->sendNewStatusOrIgnore(I)V

    goto/16 :goto_47
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 2334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2335
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "MountObbAction{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2336
    const-string v1, "filename="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2337
    iget-object v1, p0, Lcom/android/server/MountService$MountObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    iget-object v1, v1, Lcom/android/server/MountService$ObbState;->filename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2338
    const-string v1, ",callerUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2339
    iget-object v1, p0, Lcom/android/server/MountService$MountObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    iget v1, v1, Lcom/android/server/MountService$ObbState;->callerUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2340
    const-string v1, ",token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2341
    iget-object v1, p0, Lcom/android/server/MountService$MountObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    iget-object v1, v1, Lcom/android/server/MountService$ObbState;->token:Landroid/os/storage/IObbActionListener;

    if-eqz v1, :cond_5a

    iget-object v1, p0, Lcom/android/server/MountService$MountObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    iget-object v1, v1, Lcom/android/server/MountService$ObbState;->token:Landroid/os/storage/IObbActionListener;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2342
    const-string v1, ",binder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2343
    iget-object v1, p0, Lcom/android/server/MountService$MountObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    iget-object v1, v1, Lcom/android/server/MountService$ObbState;->token:Landroid/os/storage/IObbActionListener;

    if-eqz v1, :cond_5d

    iget-object v1, p0, Lcom/android/server/MountService$MountObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    invoke-virtual {v1}, Lcom/android/server/MountService$ObbState;->getBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_4d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2344
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2345
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2341
    :cond_5a
    const-string v1, "NULL"

    goto :goto_35

    .line 2343
    :cond_5d
    const-string v1, "null"

    goto :goto_4d
.end method
