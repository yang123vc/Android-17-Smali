.class public Landroid/hardware/usb/UsbManager;
.super Ljava/lang/Object;
.source "UsbManager.java"


# static fields
.field public static final ACTION_USB_ACCESSORY_ATTACHED:Ljava/lang/String; = "android.hardware.usb.action.USB_ACCESSORY_ATTACHED"

.field public static final ACTION_USB_ACCESSORY_DETACHED:Ljava/lang/String; = "android.hardware.usb.action.USB_ACCESSORY_DETACHED"

.field public static final ACTION_USB_DEVICE_ATTACHED:Ljava/lang/String; = "android.hardware.usb.action.USB_DEVICE_ATTACHED"

.field public static final ACTION_USB_DEVICE_DETACHED:Ljava/lang/String; = "android.hardware.usb.action.USB_DEVICE_DETACHED"

.field public static final ACTION_USB_STATE:Ljava/lang/String; = "android.hardware.usb.action.USB_STATE"

.field public static final EXTRA_ACCESSORY:Ljava/lang/String; = "accessory"

.field public static final EXTRA_DEVICE:Ljava/lang/String; = "device"

.field public static final EXTRA_PERMISSION_GRANTED:Ljava/lang/String; = "permission"

.field private static final TAG:Ljava/lang/String; = "UsbManager"

.field public static final USB_CONFIGURED:Ljava/lang/String; = "configured"

.field public static final USB_CONNECTED:Ljava/lang/String; = "connected"

.field public static final USB_FUNCTION_ACCESSORY:Ljava/lang/String; = "accessory"

.field public static final USB_FUNCTION_ADB:Ljava/lang/String; = "adb"

.field public static final USB_FUNCTION_MASS_STORAGE:Ljava/lang/String; = "mass_storage"

.field public static final USB_FUNCTION_MTP:Ljava/lang/String; = "mtp"

.field public static final USB_FUNCTION_PTP:Ljava/lang/String; = "ptp"

.field public static final USB_FUNCTION_RNDIS:Ljava/lang/String; = "rndis"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Landroid/hardware/usb/IUsbManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/hardware/usb/IUsbManager;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/hardware/usb/IUsbManager;

    .prologue
    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    iput-object p1, p0, Landroid/hardware/usb/UsbManager;->mContext:Landroid/content/Context;

    .line 219
    iput-object p2, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    .line 220
    return-void
.end method

.method private static propertyContainsFunction(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "function"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x2c

    const/4 v3, 0x0

    .line 394
    const-string v4, ""

    invoke-static {p0, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 395
    .local v1, "functions":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 396
    .local v2, "index":I
    if-gez v2, :cond_10

    .line 400
    :cond_f
    :goto_f
    return v3

    .line 397
    :cond_10
    if-lez v2, :cond_1a

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_f

    .line 398
    :cond_1a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int v0, v2, v4

    .line 399
    .local v0, "charAfter":I
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_2c

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_f

    .line 400
    :cond_2c
    const/4 v3, 0x1

    goto :goto_f
.end method


# virtual methods
.method public getAccessoryList()[Landroid/hardware/usb/UsbAccessory;
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 278
    :try_start_1
    iget-object v3, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v3}, Landroid/hardware/usb/IUsbManager;->getCurrentAccessory()Landroid/hardware/usb/UsbAccessory;

    move-result-object v0

    .line 279
    .local v0, "accessory":Landroid/hardware/usb/UsbAccessory;
    if-nez v0, :cond_a

    .line 286
    .end local v0    # "accessory":Landroid/hardware/usb/UsbAccessory;
    :goto_9
    return-object v2

    .line 282
    .restart local v0    # "accessory":Landroid/hardware/usb/UsbAccessory;
    :cond_a
    const/4 v3, 0x1

    new-array v3, v3, [Landroid/hardware/usb/UsbAccessory;

    const/4 v4, 0x0

    aput-object v0, v3, v4
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_10} :catch_12

    move-object v2, v3

    goto :goto_9

    .line 284
    .end local v0    # "accessory":Landroid/hardware/usb/UsbAccessory;
    :catch_12
    move-exception v1

    .line 285
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "UsbManager"

    const-string v4, "RemoteException in getAccessoryList"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public getDefaultFunction()Ljava/lang/String;
    .registers 5

    .prologue
    .line 423
    const-string/jumbo v2, "persist.sys.usb.config"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 424
    .local v1, "functions":Ljava/lang/String;
    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 425
    .local v0, "commaIndex":I
    if-lez v0, :cond_16

    .line 426
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 428
    .end local v1    # "functions":Ljava/lang/String;
    :cond_16
    return-object v1
.end method

.method public getDeviceList()Ljava/util/HashMap;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/hardware/usb/UsbDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 231
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 233
    .local v0, "bundle":Landroid/os/Bundle;
    :try_start_5
    iget-object v5, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v5, v0}, Landroid/hardware/usb/IUsbManager;->getDeviceList(Landroid/os/Bundle;)V

    .line 234
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 235
    .local v4, "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/hardware/usb/UsbDevice;>;"
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 236
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_2c} :catch_2d

    goto :goto_17

    .line 239
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/hardware/usb/UsbDevice;>;"
    :catch_2d
    move-exception v1

    .line 240
    .local v1, "e":Landroid/os/RemoteException;
    const-string v5, "UsbManager"

    const-string v6, "RemoteException in getDeviceList"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 241
    const/4 v4, 0x0

    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_36
    return-object v4
.end method

.method public hasPermission(Landroid/hardware/usb/UsbAccessory;)Z
    .registers 5
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;

    .prologue
    .line 334
    :try_start_0
    iget-object v1, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v1, p1}, Landroid/hardware/usb/IUsbManager;->hasAccessoryPermission(Landroid/hardware/usb/UsbAccessory;)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 337
    :goto_6
    return v1

    .line 335
    :catch_7
    move-exception v0

    .line 336
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "UsbManager"

    const-string v2, "RemoteException in hasPermission"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 337
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public hasPermission(Landroid/hardware/usb/UsbDevice;)Z
    .registers 5
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;

    .prologue
    .line 316
    :try_start_0
    iget-object v1, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v1, p1}, Landroid/hardware/usb/IUsbManager;->hasDevicePermission(Landroid/hardware/usb/UsbDevice;)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 319
    :goto_6
    return v1

    .line 317
    :catch_7
    move-exception v0

    .line 318
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "UsbManager"

    const-string v2, "RemoteException in hasPermission"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 319
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public isFunctionEnabled(Ljava/lang/String;)Z
    .registers 3
    .param p1, "function"    # Ljava/lang/String;

    .prologue
    .line 412
    const-string/jumbo v0, "sys.usb.config"

    invoke-static {v0, p1}, Landroid/hardware/usb/UsbManager;->propertyContainsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public openAccessory(Landroid/hardware/usb/UsbAccessory;)Landroid/os/ParcelFileDescriptor;
    .registers 5
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;

    .prologue
    .line 298
    :try_start_0
    iget-object v1, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v1, p1}, Landroid/hardware/usb/IUsbManager;->openAccessory(Landroid/hardware/usb/UsbAccessory;)Landroid/os/ParcelFileDescriptor;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 301
    :goto_6
    return-object v1

    .line 299
    :catch_7
    move-exception v0

    .line 300
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "UsbManager"

    const-string v2, "RemoteException in openAccessory"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 301
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;
    .registers 9
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;

    .prologue
    .line 254
    :try_start_0
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    .line 255
    .local v1, "deviceName":Ljava/lang/String;
    iget-object v5, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v5, v1}, Landroid/hardware/usb/IUsbManager;->openDevice(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 256
    .local v3, "pfd":Landroid/os/ParcelFileDescriptor;
    if-eqz v3, :cond_23

    .line 257
    new-instance v0, Landroid/hardware/usb/UsbDeviceConnection;

    invoke-direct {v0, p1}, Landroid/hardware/usb/UsbDeviceConnection;-><init>(Landroid/hardware/usb/UsbDevice;)V

    .line 258
    .local v0, "connection":Landroid/hardware/usb/UsbDeviceConnection;
    invoke-virtual {v0, v1, v3}, Landroid/hardware/usb/UsbDeviceConnection;->open(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)Z

    move-result v4

    .line 259
    .local v4, "result":Z
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_1b

    .line 260
    if-eqz v4, :cond_23

    .line 267
    .end local v0    # "connection":Landroid/hardware/usb/UsbDeviceConnection;
    .end local v1    # "deviceName":Ljava/lang/String;
    .end local v3    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local v4    # "result":Z
    :goto_1a
    return-object v0

    .line 264
    :catch_1b
    move-exception v2

    .line 265
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "UsbManager"

    const-string v6, "exception in UsbManager.openDevice"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 267
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_23
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public requestPermission(Landroid/hardware/usb/UsbAccessory;Landroid/app/PendingIntent;)V
    .registers 6
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;
    .param p2, "pi"    # Landroid/app/PendingIntent;

    .prologue
    .line 387
    :try_start_0
    iget-object v1, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    iget-object v2, p0, Landroid/hardware/usb/UsbManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2, p2}, Landroid/hardware/usb/IUsbManager;->requestAccessoryPermission(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;Landroid/app/PendingIntent;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 391
    :goto_b
    return-void

    .line 388
    :catch_c
    move-exception v0

    .line 389
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "UsbManager"

    const-string v2, "RemoteException in requestPermission"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b
.end method

.method public requestPermission(Landroid/hardware/usb/UsbDevice;Landroid/app/PendingIntent;)V
    .registers 6
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "pi"    # Landroid/app/PendingIntent;

    .prologue
    .line 361
    :try_start_0
    iget-object v1, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    iget-object v2, p0, Landroid/hardware/usb/UsbManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2, p2}, Landroid/hardware/usb/IUsbManager;->requestDevicePermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;Landroid/app/PendingIntent;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 365
    :goto_b
    return-void

    .line 362
    :catch_c
    move-exception v0

    .line 363
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "UsbManager"

    const-string v2, "RemoteException in requestPermission"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b
.end method

.method public setCurrentFunction(Ljava/lang/String;Z)V
    .registers 6
    .param p1, "function"    # Ljava/lang/String;
    .param p2, "makeDefault"    # Z

    .prologue
    .line 443
    :try_start_0
    iget-object v1, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v1, p1, p2}, Landroid/hardware/usb/IUsbManager;->setCurrentFunction(Ljava/lang/String;Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 447
    :goto_5
    return-void

    .line 444
    :catch_6
    move-exception v0

    .line 445
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "UsbManager"

    const-string v2, "RemoteException in setCurrentFunction"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public setMassStorageBackingFile(Ljava/lang/String;)V
    .registers 5
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 458
    :try_start_0
    iget-object v1, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v1, p1}, Landroid/hardware/usb/IUsbManager;->setMassStorageBackingFile(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 462
    :goto_5
    return-void

    .line 459
    :catch_6
    move-exception v0

    .line 460
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "UsbManager"

    const-string v2, "RemoteException in setDefaultFunction"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method
