.class public abstract Landroid/app/ActivityManagerNative;
.super Landroid/os/Binder;
.source "ActivityManagerNative.java"

# interfaces
.implements Landroid/app/IActivityManager;


# static fields
.field private static final gDefault:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton",
            "<",
            "Landroid/app/IActivityManager;",
            ">;"
        }
    .end annotation
.end field

.field static sSystemReady:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 84
    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/ActivityManagerNative;->sSystemReady:Z

    .line 1576
    new-instance v0, Landroid/app/ActivityManagerNative$1;

    invoke-direct {v0}, Landroid/app/ActivityManagerNative$1;-><init>()V

    sput-object v0, Landroid/app/ActivityManagerNative;->gDefault:Landroid/util/Singleton;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 106
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 107
    const-string v0, "android.app.IActivityManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/ActivityManagerNative;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 56
    if-nez p0, :cond_4

    .line 57
    const/4 v0, 0x0

    .line 65
    :cond_3
    :goto_3
    return-object v0

    .line 59
    :cond_4
    const-string v1, "android.app.IActivityManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/app/IActivityManager;

    .line 61
    .local v0, "in":Landroid/app/IActivityManager;
    if-nez v0, :cond_3

    .line 65
    new-instance v0, Landroid/app/ActivityManagerProxy;

    .end local v0    # "in":Landroid/app/IActivityManager;
    invoke-direct {v0, p0}, Landroid/app/ActivityManagerProxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method

.method public static broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V
    .registers 13
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 92
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v2, p0

    invoke-interface/range {v0 .. v10}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZZ)I
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_12

    .line 97
    :goto_11
    return-void

    .line 95
    :catch_12
    move-exception v0

    goto :goto_11
.end method

.method public static getDefault()Landroid/app/IActivityManager;
    .registers 1

    .prologue
    .line 72
    sget-object v0, Landroid/app/ActivityManagerNative;->gDefault:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/IActivityManager;

    return-object v0
.end method

.method public static isSystemReady()Z
    .registers 1

    .prologue
    .line 79
    sget-boolean v0, Landroid/app/ActivityManagerNative;->sSystemReady:Z

    if-nez v0, :cond_e

    .line 80
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->testIsSystemReady()Z

    move-result v0

    sput-boolean v0, Landroid/app/ActivityManagerNative;->sSystemReady:Z

    .line 82
    :cond_e
    sget-boolean v0, Landroid/app/ActivityManagerNative;->sSystemReady:Z

    return v0
.end method

.method public static noteWakeupAlarm(Landroid/app/PendingIntent;)V
    .registers 3
    .param p0, "ps"    # Landroid/app/PendingIntent;

    .prologue
    .line 101
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->noteWakeupAlarm(Landroid/content/IIntentSender;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 104
    :goto_b
    return-void

    .line 102
    :catch_c
    move-exception v0

    goto :goto_b
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 1573
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 178
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 112
    packed-switch p1, :pswitch_data_1596

    .line 1569
    :pswitch_3
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_7
    return v5

    .line 115
    :pswitch_8
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v95

    .line 117
    .local v95, "b":Landroid/os/IBinder;
    invoke-static/range {v95 .. v95}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 118
    .local v6, "app":Landroid/app/IApplicationThread;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    .line 119
    .local v7, "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 120
    .local v8, "resolvedType":Ljava/lang/String;
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/net/Uri;

    .line 121
    .local v9, "grantedUriPermissions":[Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 122
    .local v10, "grantedMode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 123
    .local v11, "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 124
    .local v12, "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 125
    .local v13, "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_75

    const/4 v14, 0x1

    .line 126
    .local v14, "onlyIfNeeded":Z
    :goto_46
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_77

    const/4 v15, 0x1

    .line 127
    .local v15, "debug":Z
    :goto_4d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 128
    .local v16, "profileFile":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_79

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v17

    .line 130
    .local v17, "profileFd":Landroid/os/ParcelFileDescriptor;
    :goto_5b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_7c

    const/16 v18, 0x1

    .local v18, "autoStopProfiler":Z
    :goto_63
    move-object/from16 v5, p0

    .line 131
    invoke-virtual/range {v5 .. v18}, Landroid/app/ActivityManagerNative;->startActivity(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;[Landroid/net/Uri;ILandroid/os/IBinder;Ljava/lang/String;IZZLjava/lang/String;Landroid/os/ParcelFileDescriptor;Z)I

    move-result v156

    .line 134
    .local v156, "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    move-object/from16 v0, p3

    move/from16 v1, v156

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    const/4 v5, 0x1

    goto :goto_7

    .line 125
    .end local v14    # "onlyIfNeeded":Z
    .end local v15    # "debug":Z
    .end local v16    # "profileFile":Ljava/lang/String;
    .end local v17    # "profileFd":Landroid/os/ParcelFileDescriptor;
    .end local v18    # "autoStopProfiler":Z
    .end local v156    # "result":I
    :cond_75
    const/4 v14, 0x0

    goto :goto_46

    .line 126
    .restart local v14    # "onlyIfNeeded":Z
    :cond_77
    const/4 v15, 0x0

    goto :goto_4d

    .line 128
    .restart local v15    # "debug":Z
    .restart local v16    # "profileFile":Ljava/lang/String;
    :cond_79
    const/16 v17, 0x0

    goto :goto_5b

    .line 130
    .restart local v17    # "profileFd":Landroid/os/ParcelFileDescriptor;
    :cond_7c
    const/16 v18, 0x0

    goto :goto_63

    .line 141
    .end local v6    # "app":Landroid/app/IApplicationThread;
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v8    # "resolvedType":Ljava/lang/String;
    .end local v9    # "grantedUriPermissions":[Landroid/net/Uri;
    .end local v10    # "grantedMode":I
    .end local v11    # "resultTo":Landroid/os/IBinder;
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v14    # "onlyIfNeeded":Z
    .end local v15    # "debug":Z
    .end local v16    # "profileFile":Ljava/lang/String;
    .end local v17    # "profileFd":Landroid/os/ParcelFileDescriptor;
    .end local v95    # "b":Landroid/os/IBinder;
    :pswitch_7f
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v95

    .line 143
    .restart local v95    # "b":Landroid/os/IBinder;
    invoke-static/range {v95 .. v95}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 144
    .restart local v6    # "app":Landroid/app/IApplicationThread;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    .line 145
    .restart local v7    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 146
    .restart local v8    # "resolvedType":Ljava/lang/String;
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/net/Uri;

    .line 147
    .restart local v9    # "grantedUriPermissions":[Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 148
    .restart local v10    # "grantedMode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 149
    .restart local v11    # "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 150
    .restart local v12    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 151
    .restart local v13    # "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_ee

    const/4 v14, 0x1

    .line 152
    .restart local v14    # "onlyIfNeeded":Z
    :goto_bd
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_f0

    const/4 v15, 0x1

    .line 153
    .restart local v15    # "debug":Z
    :goto_c4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 154
    .restart local v16    # "profileFile":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_f2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v17

    .line 156
    .restart local v17    # "profileFd":Landroid/os/ParcelFileDescriptor;
    :goto_d2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_f5

    const/16 v18, 0x1

    .restart local v18    # "autoStopProfiler":Z
    :goto_da
    move-object/from16 v5, p0

    .line 157
    invoke-virtual/range {v5 .. v18}, Landroid/app/ActivityManagerNative;->startActivityAndWait(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;[Landroid/net/Uri;ILandroid/os/IBinder;Ljava/lang/String;IZZLjava/lang/String;Landroid/os/ParcelFileDescriptor;Z)Landroid/app/IActivityManager$WaitResult;

    move-result-object v156

    .line 160
    .local v156, "result":Landroid/app/IActivityManager$WaitResult;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    const/4 v5, 0x0

    move-object/from16 v0, v156

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/app/IActivityManager$WaitResult;->writeToParcel(Landroid/os/Parcel;I)V

    .line 162
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 151
    .end local v14    # "onlyIfNeeded":Z
    .end local v15    # "debug":Z
    .end local v16    # "profileFile":Ljava/lang/String;
    .end local v17    # "profileFd":Landroid/os/ParcelFileDescriptor;
    .end local v18    # "autoStopProfiler":Z
    .end local v156    # "result":Landroid/app/IActivityManager$WaitResult;
    :cond_ee
    const/4 v14, 0x0

    goto :goto_bd

    .line 152
    .restart local v14    # "onlyIfNeeded":Z
    :cond_f0
    const/4 v15, 0x0

    goto :goto_c4

    .line 154
    .restart local v15    # "debug":Z
    .restart local v16    # "profileFile":Ljava/lang/String;
    :cond_f2
    const/16 v17, 0x0

    goto :goto_d2

    .line 156
    .restart local v17    # "profileFd":Landroid/os/ParcelFileDescriptor;
    :cond_f5
    const/16 v18, 0x0

    goto :goto_da

    .line 167
    .end local v6    # "app":Landroid/app/IApplicationThread;
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v8    # "resolvedType":Ljava/lang/String;
    .end local v9    # "grantedUriPermissions":[Landroid/net/Uri;
    .end local v10    # "grantedMode":I
    .end local v11    # "resultTo":Landroid/os/IBinder;
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v14    # "onlyIfNeeded":Z
    .end local v15    # "debug":Z
    .end local v16    # "profileFile":Ljava/lang/String;
    .end local v17    # "profileFd":Landroid/os/ParcelFileDescriptor;
    .end local v95    # "b":Landroid/os/IBinder;
    :pswitch_f8
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v95

    .line 169
    .restart local v95    # "b":Landroid/os/IBinder;
    invoke-static/range {v95 .. v95}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 170
    .restart local v6    # "app":Landroid/app/IApplicationThread;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    .line 171
    .restart local v7    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 172
    .restart local v8    # "resolvedType":Ljava/lang/String;
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/net/Uri;

    .line 173
    .restart local v9    # "grantedUriPermissions":[Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 174
    .restart local v10    # "grantedMode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 175
    .restart local v11    # "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 176
    .restart local v12    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 177
    .restart local v13    # "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_16e

    const/4 v14, 0x1

    .line 178
    .restart local v14    # "onlyIfNeeded":Z
    :goto_136
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_170

    const/4 v15, 0x1

    .line 179
    .restart local v15    # "debug":Z
    :goto_13d
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/content/res/Configuration;

    .local v30, "config":Landroid/content/res/Configuration;
    move-object/from16 v19, p0

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    move/from16 v24, v10

    move-object/from16 v25, v11

    move-object/from16 v26, v12

    move/from16 v27, v13

    move/from16 v28, v14

    move/from16 v29, v15

    .line 180
    invoke-virtual/range {v19 .. v30}, Landroid/app/ActivityManagerNative;->startActivityWithConfig(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;[Landroid/net/Uri;ILandroid/os/IBinder;Ljava/lang/String;IZZLandroid/content/res/Configuration;)I

    move-result v156

    .line 183
    .local v156, "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    move-object/from16 v0, p3

    move/from16 v1, v156

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 177
    .end local v14    # "onlyIfNeeded":Z
    .end local v15    # "debug":Z
    .end local v30    # "config":Landroid/content/res/Configuration;
    .end local v156    # "result":I
    :cond_16e
    const/4 v14, 0x0

    goto :goto_136

    .line 178
    .restart local v14    # "onlyIfNeeded":Z
    :cond_170
    const/4 v15, 0x0

    goto :goto_13d

    .line 190
    .end local v6    # "app":Landroid/app/IApplicationThread;
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v8    # "resolvedType":Ljava/lang/String;
    .end local v9    # "grantedUriPermissions":[Landroid/net/Uri;
    .end local v10    # "grantedMode":I
    .end local v11    # "resultTo":Landroid/os/IBinder;
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v14    # "onlyIfNeeded":Z
    .end local v95    # "b":Landroid/os/IBinder;
    :pswitch_172
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v95

    .line 192
    .restart local v95    # "b":Landroid/os/IBinder;
    invoke-static/range {v95 .. v95}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 193
    .restart local v6    # "app":Landroid/app/IApplicationThread;
    sget-object v5, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/IntentSender;

    .line 194
    .local v7, "intent":Landroid/content/IntentSender;
    const/16 v22, 0x0

    .line 195
    .local v22, "fillInIntent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_19d

    .line 196
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    .end local v22    # "fillInIntent":Landroid/content/Intent;
    check-cast v22, Landroid/content/Intent;

    .line 198
    .restart local v22    # "fillInIntent":Landroid/content/Intent;
    :cond_19d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 199
    .restart local v8    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 200
    .restart local v11    # "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 201
    .restart local v12    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 202
    .restart local v13    # "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 203
    .local v27, "flagsMask":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    .local v28, "flagsValues":I
    move-object/from16 v19, p0

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    move-object/from16 v23, v8

    move-object/from16 v24, v11

    move-object/from16 v25, v12

    move/from16 v26, v13

    .line 204
    invoke-virtual/range {v19 .. v28}, Landroid/app/ActivityManagerNative;->startActivityIntentSender(Landroid/app/IApplicationThread;Landroid/content/IntentSender;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;III)I

    move-result v156

    .line 207
    .restart local v156    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    move-object/from16 v0, p3

    move/from16 v1, v156

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 209
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 214
    .end local v6    # "app":Landroid/app/IApplicationThread;
    .end local v7    # "intent":Landroid/content/IntentSender;
    .end local v8    # "resolvedType":Ljava/lang/String;
    .end local v11    # "resultTo":Landroid/os/IBinder;
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v22    # "fillInIntent":Landroid/content/Intent;
    .end local v27    # "flagsMask":I
    .end local v28    # "flagsValues":I
    .end local v95    # "b":Landroid/os/IBinder;
    .end local v156    # "result":I
    :pswitch_1d4
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v99

    .line 216
    .local v99, "callingActivity":Landroid/os/IBinder;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    .line 217
    .local v7, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v1, v7}, Landroid/app/ActivityManagerNative;->startNextMatchingActivity(Landroid/os/IBinder;Landroid/content/Intent;)Z

    move-result v156

    .line 218
    .local v156, "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    if-eqz v156, :cond_1ff

    const/4 v5, 0x1

    :goto_1f7
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 220
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 219
    :cond_1ff
    const/4 v5, 0x0

    goto :goto_1f7

    .line 224
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v99    # "callingActivity":Landroid/os/IBinder;
    .end local v156    # "result":Z
    :pswitch_201
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 225
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v50

    .line 226
    .local v50, "token":Landroid/os/IBinder;
    const/16 v43, 0x0

    .line 227
    .local v43, "resultData":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v42

    .line 228
    .local v42, "resultCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_222

    .line 229
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v43

    .end local v43    # "resultData":Landroid/content/Intent;
    check-cast v43, Landroid/content/Intent;

    .line 231
    .restart local v43    # "resultData":Landroid/content/Intent;
    :cond_222
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move/from16 v2, v42

    move-object/from16 v3, v43

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;)Z

    move-result v154

    .line 232
    .local v154, "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    if-eqz v154, :cond_23c

    const/4 v5, 0x1

    :goto_234
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 233
    :cond_23c
    const/4 v5, 0x0

    goto :goto_234

    .line 238
    .end local v42    # "resultCode":I
    .end local v43    # "resultData":Landroid/content/Intent;
    .end local v50    # "token":Landroid/os/IBinder;
    .end local v154    # "res":Z
    :pswitch_23e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 239
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v50

    .line 240
    .restart local v50    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 241
    .restart local v12    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 242
    .restart local v13    # "requestCode":I
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-virtual {v0, v1, v12, v13}, Landroid/app/ActivityManagerNative;->finishSubActivity(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 243
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 248
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v50    # "token":Landroid/os/IBinder;
    :pswitch_25e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 249
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v50

    .line 250
    .restart local v50    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->willActivityBeVisible(Landroid/os/IBinder;)Z

    move-result v154

    .line 251
    .restart local v154    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 252
    if-eqz v154, :cond_27f

    const/4 v5, 0x1

    :goto_277
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 253
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 252
    :cond_27f
    const/4 v5, 0x0

    goto :goto_277

    .line 258
    .end local v50    # "token":Landroid/os/IBinder;
    .end local v154    # "res":Z
    :pswitch_281
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 259
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v95

    .line 260
    .restart local v95    # "b":Landroid/os/IBinder;
    if-eqz v95, :cond_2ca

    invoke-static/range {v95 .. v95}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 262
    .restart local v6    # "app":Landroid/app/IApplicationThread;
    :goto_292
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v33

    .line 263
    .local v33, "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v95

    .line 264
    if-eqz v95, :cond_2cc

    invoke-static/range {v95 .. v95}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v34

    .line 266
    .local v34, "rec":Landroid/content/IIntentReceiver;
    :goto_2a0
    sget-object v5, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/content/IntentFilter;

    .line 267
    .local v35, "filter":Landroid/content/IntentFilter;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v36

    .local v36, "perm":Ljava/lang/String;
    move-object/from16 v31, p0

    move-object/from16 v32, v6

    .line 268
    invoke-virtual/range {v31 .. v36}, Landroid/app/ActivityManagerNative;->registerReceiver(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/IIntentReceiver;Landroid/content/IntentFilter;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 269
    .restart local v7    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 270
    if-eqz v7, :cond_2cf

    .line 271
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 272
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v7, v0, v5}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 276
    :goto_2c7
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 260
    .end local v6    # "app":Landroid/app/IApplicationThread;
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v33    # "packageName":Ljava/lang/String;
    .end local v34    # "rec":Landroid/content/IIntentReceiver;
    .end local v35    # "filter":Landroid/content/IntentFilter;
    .end local v36    # "perm":Ljava/lang/String;
    :cond_2ca
    const/4 v6, 0x0

    goto :goto_292

    .line 264
    .restart local v6    # "app":Landroid/app/IApplicationThread;
    .restart local v33    # "packageName":Ljava/lang/String;
    :cond_2cc
    const/16 v34, 0x0

    goto :goto_2a0

    .line 274
    .restart local v7    # "intent":Landroid/content/Intent;
    .restart local v34    # "rec":Landroid/content/IIntentReceiver;
    .restart local v35    # "filter":Landroid/content/IntentFilter;
    .restart local v36    # "perm":Ljava/lang/String;
    :cond_2cf
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2c7

    .line 281
    .end local v6    # "app":Landroid/app/IApplicationThread;
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v33    # "packageName":Ljava/lang/String;
    .end local v34    # "rec":Landroid/content/IIntentReceiver;
    .end local v35    # "filter":Landroid/content/IntentFilter;
    .end local v36    # "perm":Ljava/lang/String;
    .end local v95    # "b":Landroid/os/IBinder;
    :pswitch_2d6
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 282
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v95

    .line 283
    .restart local v95    # "b":Landroid/os/IBinder;
    if-nez v95, :cond_2e6

    .line 284
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 286
    :cond_2e6
    invoke-static/range {v95 .. v95}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v34

    .line 287
    .restart local v34    # "rec":Landroid/content/IIntentReceiver;
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unregisterReceiver(Landroid/content/IIntentReceiver;)V

    .line 288
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 289
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 294
    .end local v34    # "rec":Landroid/content/IIntentReceiver;
    .end local v95    # "b":Landroid/os/IBinder;
    :pswitch_2f7
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 295
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v95

    .line 296
    .restart local v95    # "b":Landroid/os/IBinder;
    if-eqz v95, :cond_35d

    invoke-static/range {v95 .. v95}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 298
    .restart local v6    # "app":Landroid/app/IApplicationThread;
    :goto_308
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    .line 299
    .restart local v7    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 300
    .restart local v8    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v95

    .line 301
    if-eqz v95, :cond_35f

    invoke-static/range {v95 .. v95}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v11

    .line 303
    .local v11, "resultTo":Landroid/content/IIntentReceiver;
    :goto_320
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v42

    .line 304
    .restart local v42    # "resultCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v43

    .line 305
    .local v43, "resultData":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v44

    .line 306
    .local v44, "resultExtras":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v36

    .line 307
    .restart local v36    # "perm":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_361

    const/16 v46, 0x1

    .line 308
    .local v46, "serialized":Z
    :goto_338
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_364

    const/16 v47, 0x1

    .local v47, "sticky":Z
    :goto_340
    move-object/from16 v37, p0

    move-object/from16 v38, v6

    move-object/from16 v39, v7

    move-object/from16 v40, v8

    move-object/from16 v41, v11

    move-object/from16 v45, v36

    .line 309
    invoke-virtual/range {v37 .. v47}, Landroid/app/ActivityManagerNative;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZZ)I

    move-result v154

    .line 312
    .local v154, "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 313
    move-object/from16 v0, p3

    move/from16 v1, v154

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 314
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 296
    .end local v6    # "app":Landroid/app/IApplicationThread;
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v8    # "resolvedType":Ljava/lang/String;
    .end local v11    # "resultTo":Landroid/content/IIntentReceiver;
    .end local v36    # "perm":Ljava/lang/String;
    .end local v42    # "resultCode":I
    .end local v43    # "resultData":Ljava/lang/String;
    .end local v44    # "resultExtras":Landroid/os/Bundle;
    .end local v46    # "serialized":Z
    .end local v47    # "sticky":Z
    .end local v154    # "res":I
    :cond_35d
    const/4 v6, 0x0

    goto :goto_308

    .line 301
    .restart local v6    # "app":Landroid/app/IApplicationThread;
    .restart local v7    # "intent":Landroid/content/Intent;
    .restart local v8    # "resolvedType":Ljava/lang/String;
    :cond_35f
    const/4 v11, 0x0

    goto :goto_320

    .line 307
    .restart local v11    # "resultTo":Landroid/content/IIntentReceiver;
    .restart local v36    # "perm":Ljava/lang/String;
    .restart local v42    # "resultCode":I
    .restart local v43    # "resultData":Ljava/lang/String;
    .restart local v44    # "resultExtras":Landroid/os/Bundle;
    :cond_361
    const/16 v46, 0x0

    goto :goto_338

    .line 308
    .restart local v46    # "serialized":Z
    :cond_364
    const/16 v47, 0x0

    goto :goto_340

    .line 319
    .end local v6    # "app":Landroid/app/IApplicationThread;
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v8    # "resolvedType":Ljava/lang/String;
    .end local v11    # "resultTo":Landroid/content/IIntentReceiver;
    .end local v36    # "perm":Ljava/lang/String;
    .end local v42    # "resultCode":I
    .end local v43    # "resultData":Ljava/lang/String;
    .end local v44    # "resultExtras":Landroid/os/Bundle;
    .end local v46    # "serialized":Z
    .end local v95    # "b":Landroid/os/IBinder;
    :pswitch_367
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 320
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v95

    .line 321
    .restart local v95    # "b":Landroid/os/IBinder;
    if-eqz v95, :cond_38d

    invoke-static/range {v95 .. v95}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 322
    .restart local v6    # "app":Landroid/app/IApplicationThread;
    :goto_378
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    .line 323
    .restart local v7    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/app/ActivityManagerNative;->unbroadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;)V

    .line 324
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 325
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 321
    .end local v6    # "app":Landroid/app/IApplicationThread;
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_38d
    const/4 v6, 0x0

    goto :goto_378

    .line 329
    .end local v95    # "b":Landroid/os/IBinder;
    :pswitch_38f
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 330
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v41

    .line 331
    .local v41, "who":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v42

    .line 332
    .restart local v42    # "resultCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v43

    .line 333
    .restart local v43    # "resultData":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v44

    .line 334
    .restart local v44    # "resultExtras":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3bb

    const/16 v45, 0x1

    .line 335
    .local v45, "resultAbort":Z
    :goto_3ae
    if-eqz v41, :cond_3b5

    move-object/from16 v40, p0

    .line 336
    invoke-virtual/range {v40 .. v45}, Landroid/app/ActivityManagerNative;->finishReceiver(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/Bundle;Z)V

    .line 338
    :cond_3b5
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 339
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 334
    .end local v45    # "resultAbort":Z
    :cond_3bb
    const/16 v45, 0x0

    goto :goto_3ae

    .line 343
    .end local v41    # "who":Landroid/os/IBinder;
    .end local v42    # "resultCode":I
    .end local v43    # "resultData":Ljava/lang/String;
    .end local v44    # "resultExtras":Landroid/os/Bundle;
    :pswitch_3be
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 344
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 346
    .restart local v6    # "app":Landroid/app/IApplicationThread;
    if-eqz v6, :cond_3d4

    .line 347
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/app/ActivityManagerNative;->attachApplication(Landroid/app/IApplicationThread;)V

    .line 349
    :cond_3d4
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 350
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 354
    .end local v6    # "app":Landroid/app/IApplicationThread;
    :pswitch_3da
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 355
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v50

    .line 356
    .restart local v50    # "token":Landroid/os/IBinder;
    const/16 v30, 0x0

    .line 357
    .restart local v30    # "config":Landroid/content/res/Configuration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3f7

    .line 358
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v30

    .end local v30    # "config":Landroid/content/res/Configuration;
    check-cast v30, Landroid/content/res/Configuration;

    .line 360
    .restart local v30    # "config":Landroid/content/res/Configuration;
    :cond_3f7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_412

    const/16 v161, 0x1

    .line 361
    .local v161, "stopProfiling":Z
    :goto_3ff
    if-eqz v50, :cond_40c

    .line 362
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v30

    move/from16 v3, v161

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->activityIdle(Landroid/os/IBinder;Landroid/content/res/Configuration;Z)V

    .line 364
    :cond_40c
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 365
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 360
    .end local v161    # "stopProfiling":Z
    :cond_412
    const/16 v161, 0x0

    goto :goto_3ff

    .line 369
    .end local v30    # "config":Landroid/content/res/Configuration;
    .end local v50    # "token":Landroid/os/IBinder;
    :pswitch_415
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 370
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v50

    .line 371
    .restart local v50    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->activityPaused(Landroid/os/IBinder;)V

    .line 372
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 373
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 377
    .end local v50    # "token":Landroid/os/IBinder;
    :pswitch_42d
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 378
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v50

    .line 379
    .restart local v50    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v127

    .line 380
    .local v127, "map":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_46b

    sget-object v5, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    move-object/from16 v167, v5

    .line 382
    .local v167, "thumbnail":Landroid/graphics/Bitmap;
    :goto_44e
    sget-object v5, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v106

    check-cast v106, Ljava/lang/CharSequence;

    .line 383
    .local v106, "description":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v127

    move-object/from16 v3, v167

    move-object/from16 v4, v106

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->activityStopped(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V

    .line 384
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 385
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 380
    .end local v106    # "description":Ljava/lang/CharSequence;
    .end local v167    # "thumbnail":Landroid/graphics/Bitmap;
    :cond_46b
    const/16 v167, 0x0

    goto :goto_44e

    .line 389
    .end local v50    # "token":Landroid/os/IBinder;
    .end local v127    # "map":Landroid/os/Bundle;
    :pswitch_46e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 390
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v50

    .line 391
    .restart local v50    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->activitySlept(Landroid/os/IBinder;)V

    .line 392
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 393
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 397
    .end local v50    # "token":Landroid/os/IBinder;
    :pswitch_486
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 398
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v50

    .line 399
    .restart local v50    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->activityDestroyed(Landroid/os/IBinder;)V

    .line 400
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 401
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 405
    .end local v50    # "token":Landroid/os/IBinder;
    :pswitch_49e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 406
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v50

    .line 407
    .restart local v50    # "token":Landroid/os/IBinder;
    if-eqz v50, :cond_4c0

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getCallingPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v154

    .line 408
    .local v154, "res":Ljava/lang/String;
    :goto_4b3
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 409
    move-object/from16 v0, p3

    move-object/from16 v1, v154

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 410
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 407
    .end local v154    # "res":Ljava/lang/String;
    :cond_4c0
    const/16 v154, 0x0

    goto :goto_4b3

    .line 414
    .end local v50    # "token":Landroid/os/IBinder;
    :pswitch_4c3
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 415
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v50

    .line 416
    .restart local v50    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getCallingActivity(Landroid/os/IBinder;)Landroid/content/ComponentName;

    move-result-object v103

    .line 417
    .local v103, "cn":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 418
    move-object/from16 v0, v103

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 419
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 423
    .end local v50    # "token":Landroid/os/IBinder;
    .end local v103    # "cn":Landroid/content/ComponentName;
    :pswitch_4e3
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 424
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v129

    .line 425
    .local v129, "maxNum":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v60

    .line 426
    .local v60, "fl":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v151

    .line 427
    .local v151, "receiverBinder":Landroid/os/IBinder;
    if-eqz v151, :cond_535

    invoke-static/range {v151 .. v151}, Landroid/app/IThumbnailReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IThumbnailReceiver;

    move-result-object v150

    .line 430
    .local v150, "receiver":Landroid/app/IThumbnailReceiver;
    :goto_4fc
    move-object/from16 v0, p0

    move/from16 v1, v129

    move/from16 v2, v60

    move-object/from16 v3, v150

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->getTasks(IILandroid/app/IThumbnailReceiver;)Ljava/util/List;

    move-result-object v121

    .line 431
    .local v121, "list":Ljava/util/List;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 432
    if-eqz v121, :cond_538

    invoke-interface/range {v121 .. v121}, Ljava/util/List;->size()I

    move-result v89

    .line 433
    .local v89, "N":I
    :goto_511
    move-object/from16 v0, p3

    move/from16 v1, v89

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 435
    const/16 v111, 0x0

    .local v111, "i":I
    :goto_51a
    move/from16 v0, v111

    move/from16 v1, v89

    if-ge v0, v1, :cond_53b

    .line 436
    move-object/from16 v0, v121

    move/from16 v1, v111

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v114

    check-cast v114, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 438
    .local v114, "info":Landroid/app/ActivityManager$RunningTaskInfo;
    const/4 v5, 0x0

    move-object/from16 v0, v114

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/app/ActivityManager$RunningTaskInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 435
    add-int/lit8 v111, v111, 0x1

    goto :goto_51a

    .line 427
    .end local v89    # "N":I
    .end local v111    # "i":I
    .end local v114    # "info":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v121    # "list":Ljava/util/List;
    .end local v150    # "receiver":Landroid/app/IThumbnailReceiver;
    :cond_535
    const/16 v150, 0x0

    goto :goto_4fc

    .line 432
    .restart local v121    # "list":Ljava/util/List;
    .restart local v150    # "receiver":Landroid/app/IThumbnailReceiver;
    :cond_538
    const/16 v89, -0x1

    goto :goto_511

    .line 440
    .restart local v89    # "N":I
    .restart local v111    # "i":I
    :cond_53b
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 444
    .end local v60    # "fl":I
    .end local v89    # "N":I
    .end local v111    # "i":I
    .end local v121    # "list":Ljava/util/List;
    .end local v129    # "maxNum":I
    .end local v150    # "receiver":Landroid/app/IThumbnailReceiver;
    .end local v151    # "receiverBinder":Landroid/os/IBinder;
    :pswitch_53e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 445
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v129

    .line 446
    .restart local v129    # "maxNum":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v60

    .line 447
    .restart local v60    # "fl":I
    move-object/from16 v0, p0

    move/from16 v1, v129

    move/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getRecentTasks(II)Ljava/util/List;

    move-result-object v123

    .line 449
    .local v123, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 450
    move-object/from16 v0, p3

    move-object/from16 v1, v123

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 451
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 455
    .end local v60    # "fl":I
    .end local v123    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    .end local v129    # "maxNum":I
    :pswitch_564
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 456
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v51

    .line 457
    .local v51, "id":I
    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getTaskThumbnails(I)Landroid/app/ActivityManager$TaskThumbnails;

    move-result-object v98

    .line 458
    .local v98, "bm":Landroid/app/ActivityManager$TaskThumbnails;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 459
    if-eqz v98, :cond_58d

    .line 460
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 461
    const/4 v5, 0x0

    move-object/from16 v0, v98

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/app/ActivityManager$TaskThumbnails;->writeToParcel(Landroid/os/Parcel;I)V

    .line 465
    :goto_58a
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 463
    :cond_58d
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_58a

    .line 469
    .end local v51    # "id":I
    .end local v98    # "bm":Landroid/app/ActivityManager$TaskThumbnails;
    :pswitch_594
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 470
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v129

    .line 471
    .restart local v129    # "maxNum":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v60

    .line 472
    .restart local v60    # "fl":I
    move-object/from16 v0, p0

    move/from16 v1, v129

    move/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getServices(II)Ljava/util/List;

    move-result-object v121

    .line 473
    .restart local v121    # "list":Ljava/util/List;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 474
    if-eqz v121, :cond_5da

    invoke-interface/range {v121 .. v121}, Ljava/util/List;->size()I

    move-result v89

    .line 475
    .restart local v89    # "N":I
    :goto_5b6
    move-object/from16 v0, p3

    move/from16 v1, v89

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 477
    const/16 v111, 0x0

    .restart local v111    # "i":I
    :goto_5bf
    move/from16 v0, v111

    move/from16 v1, v89

    if-ge v0, v1, :cond_5dd

    .line 478
    move-object/from16 v0, v121

    move/from16 v1, v111

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v114

    check-cast v114, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 480
    .local v114, "info":Landroid/app/ActivityManager$RunningServiceInfo;
    const/4 v5, 0x0

    move-object/from16 v0, v114

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/app/ActivityManager$RunningServiceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 477
    add-int/lit8 v111, v111, 0x1

    goto :goto_5bf

    .line 474
    .end local v89    # "N":I
    .end local v111    # "i":I
    .end local v114    # "info":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_5da
    const/16 v89, -0x1

    goto :goto_5b6

    .line 482
    .restart local v89    # "N":I
    .restart local v111    # "i":I
    :cond_5dd
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 486
    .end local v60    # "fl":I
    .end local v89    # "N":I
    .end local v111    # "i":I
    .end local v121    # "list":Ljava/util/List;
    .end local v129    # "maxNum":I
    :pswitch_5e0
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 487
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getProcessesInErrorState()Ljava/util/List;

    move-result-object v122

    .line 488
    .local v122, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$ProcessErrorStateInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 489
    move-object/from16 v0, p3

    move-object/from16 v1, v122

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 490
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 494
    .end local v122    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$ProcessErrorStateInfo;>;"
    :pswitch_5f8
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 495
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v124

    .line 496
    .local v124, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 497
    move-object/from16 v0, p3

    move-object/from16 v1, v124

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 498
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 502
    .end local v124    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :pswitch_610
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 503
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getRunningExternalApplications()Ljava/util/List;

    move-result-object v125

    .line 504
    .local v125, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 505
    move-object/from16 v0, p3

    move-object/from16 v1, v125

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 506
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 510
    .end local v125    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :pswitch_628
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 511
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v165

    .line 512
    .local v165, "task":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v60

    .line 513
    .restart local v60    # "fl":I
    move-object/from16 v0, p0

    move/from16 v1, v165

    move/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->moveTaskToFront(II)V

    .line 514
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 515
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 519
    .end local v60    # "fl":I
    .end local v165    # "task":I
    :pswitch_646
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 520
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v165

    .line 521
    .restart local v165    # "task":I
    move-object/from16 v0, p0

    move/from16 v1, v165

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->moveTaskToBack(I)V

    .line 522
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 523
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 527
    .end local v165    # "task":I
    :pswitch_65e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 528
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v50

    .line 529
    .restart local v50    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_689

    const/16 v135, 0x1

    .line 530
    .local v135, "nonRoot":Z
    :goto_671
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move/from16 v2, v135

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->moveActivityTaskToBack(Landroid/os/IBinder;Z)Z

    move-result v154

    .line 531
    .local v154, "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 532
    if-eqz v154, :cond_68c

    const/4 v5, 0x1

    :goto_681
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 533
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 529
    .end local v135    # "nonRoot":Z
    .end local v154    # "res":Z
    :cond_689
    const/16 v135, 0x0

    goto :goto_671

    .line 532
    .restart local v135    # "nonRoot":Z
    .restart local v154    # "res":Z
    :cond_68c
    const/4 v5, 0x0

    goto :goto_681

    .line 537
    .end local v50    # "token":Landroid/os/IBinder;
    .end local v135    # "nonRoot":Z
    .end local v154    # "res":Z
    :pswitch_68e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 538
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v165

    .line 539
    .restart local v165    # "task":I
    move-object/from16 v0, p0

    move/from16 v1, v165

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->moveTaskBackwards(I)V

    .line 540
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 541
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 545
    .end local v165    # "task":I
    :pswitch_6a6
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 546
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v50

    .line 547
    .restart local v50    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6d2

    const/16 v137, 0x1

    .line 548
    .local v137, "onlyRoot":Z
    :goto_6b9
    if-eqz v50, :cond_6d5

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move/from16 v2, v137

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getTaskForActivity(Landroid/os/IBinder;Z)I

    move-result v154

    .line 550
    .local v154, "res":I
    :goto_6c5
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 551
    move-object/from16 v0, p3

    move/from16 v1, v154

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 552
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 547
    .end local v137    # "onlyRoot":Z
    .end local v154    # "res":I
    :cond_6d2
    const/16 v137, 0x0

    goto :goto_6b9

    .line 548
    .restart local v137    # "onlyRoot":Z
    :cond_6d5
    const/16 v154, -0x1

    goto :goto_6c5

    .line 556
    .end local v50    # "token":Landroid/os/IBinder;
    .end local v137    # "onlyRoot":Z
    :pswitch_6d8
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 557
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v50

    .line 558
    .restart local v50    # "token":Landroid/os/IBinder;
    invoke-static/range {p2 .. p2}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v49

    .line 559
    .local v49, "className":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->finishOtherInstances(Landroid/os/IBinder;Landroid/content/ComponentName;)V

    .line 560
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 561
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 565
    .end local v49    # "className":Landroid/content/ComponentName;
    .end local v50    # "token":Landroid/os/IBinder;
    :pswitch_6f6
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 566
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v50

    .line 567
    .restart local v50    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_72e

    sget-object v5, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    move-object/from16 v167, v5

    .line 569
    .restart local v167    # "thumbnail":Landroid/graphics/Bitmap;
    :goto_713
    sget-object v5, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v106

    check-cast v106, Ljava/lang/CharSequence;

    .line 570
    .restart local v106    # "description":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v167

    move-object/from16 v3, v106

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->reportThumbnail(Landroid/os/IBinder;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V

    .line 571
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 572
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 567
    .end local v106    # "description":Ljava/lang/CharSequence;
    .end local v167    # "thumbnail":Landroid/graphics/Bitmap;
    :cond_72e
    const/16 v167, 0x0

    goto :goto_713

    .line 576
    .end local v50    # "token":Landroid/os/IBinder;
    :pswitch_731
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 577
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v95

    .line 578
    .restart local v95    # "b":Landroid/os/IBinder;
    invoke-static/range {v95 .. v95}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 579
    .restart local v6    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v134

    .line 580
    .local v134, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v134

    invoke-virtual {v0, v6, v1}, Landroid/app/ActivityManagerNative;->getContentProvider(Landroid/app/IApplicationThread;Ljava/lang/String;)Landroid/app/IActivityManager$ContentProviderHolder;

    move-result-object v105

    .line 581
    .local v105, "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 582
    if-eqz v105, :cond_762

    .line 583
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 584
    const/4 v5, 0x0

    move-object/from16 v0, v105

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/app/IActivityManager$ContentProviderHolder;->writeToParcel(Landroid/os/Parcel;I)V

    .line 588
    :goto_75f
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 586
    :cond_762
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_75f

    .line 592
    .end local v6    # "app":Landroid/app/IApplicationThread;
    .end local v95    # "b":Landroid/os/IBinder;
    .end local v105    # "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    .end local v134    # "name":Ljava/lang/String;
    :pswitch_769
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 593
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v95

    .line 594
    .restart local v95    # "b":Landroid/os/IBinder;
    invoke-static/range {v95 .. v95}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 595
    .restart local v6    # "app":Landroid/app/IApplicationThread;
    sget-object v5, Landroid/app/IActivityManager$ContentProviderHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v146

    .line 597
    .local v146, "providers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/IActivityManager$ContentProviderHolder;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v146

    invoke-virtual {v0, v6, v1}, Landroid/app/ActivityManagerNative;->publishContentProviders(Landroid/app/IApplicationThread;Ljava/util/List;)V

    .line 598
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 599
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 603
    .end local v6    # "app":Landroid/app/IApplicationThread;
    .end local v95    # "b":Landroid/os/IBinder;
    .end local v146    # "providers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/IActivityManager$ContentProviderHolder;>;"
    :pswitch_78d
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 604
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v95

    .line 605
    .restart local v95    # "b":Landroid/os/IBinder;
    invoke-static/range {v95 .. v95}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 606
    .restart local v6    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v134

    .line 607
    .restart local v134    # "name":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v134

    invoke-virtual {v0, v6, v1}, Landroid/app/ActivityManagerNative;->removeContentProvider(Landroid/app/IApplicationThread;Ljava/lang/String;)V

    .line 608
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 609
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 613
    .end local v6    # "app":Landroid/app/IApplicationThread;
    .end local v95    # "b":Landroid/os/IBinder;
    .end local v134    # "name":Ljava/lang/String;
    :pswitch_7ad
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 614
    sget-object v5, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v104

    check-cast v104, Landroid/content/ComponentName;

    .line 615
    .local v104, "comp":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getRunningServiceControlPanel(Landroid/content/ComponentName;)Landroid/app/PendingIntent;

    move-result-object v140

    .line 616
    .local v140, "pi":Landroid/app/PendingIntent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 617
    move-object/from16 v0, v140

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/app/PendingIntent;->writePendingIntentOrNullToParcel(Landroid/app/PendingIntent;Landroid/os/Parcel;)V

    .line 618
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 622
    .end local v104    # "comp":Landroid/content/ComponentName;
    .end local v140    # "pi":Landroid/app/PendingIntent;
    :pswitch_7d3
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 623
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v95

    .line 624
    .restart local v95    # "b":Landroid/os/IBinder;
    invoke-static/range {v95 .. v95}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 625
    .restart local v6    # "app":Landroid/app/IApplicationThread;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v57

    check-cast v57, Landroid/content/Intent;

    .line 626
    .local v57, "service":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 627
    .restart local v8    # "resolvedType":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-virtual {v0, v6, v1, v8}, Landroid/app/ActivityManagerNative;->startService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v103

    .line 628
    .restart local v103    # "cn":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 629
    move-object/from16 v0, v103

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 630
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 634
    .end local v6    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "resolvedType":Ljava/lang/String;
    .end local v57    # "service":Landroid/content/Intent;
    .end local v95    # "b":Landroid/os/IBinder;
    .end local v103    # "cn":Landroid/content/ComponentName;
    :pswitch_805
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 635
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v95

    .line 636
    .restart local v95    # "b":Landroid/os/IBinder;
    invoke-static/range {v95 .. v95}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 637
    .restart local v6    # "app":Landroid/app/IApplicationThread;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v57

    check-cast v57, Landroid/content/Intent;

    .line 638
    .restart local v57    # "service":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 639
    .restart local v8    # "resolvedType":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-virtual {v0, v6, v1, v8}, Landroid/app/ActivityManagerNative;->stopService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;)I

    move-result v154

    .line 640
    .restart local v154    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 641
    move-object/from16 v0, p3

    move/from16 v1, v154

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 642
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 646
    .end local v6    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "resolvedType":Ljava/lang/String;
    .end local v57    # "service":Landroid/content/Intent;
    .end local v95    # "b":Landroid/os/IBinder;
    .end local v154    # "res":I
    :pswitch_837
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 647
    invoke-static/range {p2 .. p2}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v49

    .line 648
    .restart local v49    # "className":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v50

    .line 649
    .restart local v50    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v160

    .line 650
    .local v160, "startId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move-object/from16 v2, v50

    move/from16 v3, v160

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->stopServiceToken(Landroid/content/ComponentName;Landroid/os/IBinder;I)Z

    move-result v154

    .line 651
    .local v154, "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 652
    if-eqz v154, :cond_864

    const/4 v5, 0x1

    :goto_85c
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 653
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 652
    :cond_864
    const/4 v5, 0x0

    goto :goto_85c

    .line 657
    .end local v49    # "className":Landroid/content/ComponentName;
    .end local v50    # "token":Landroid/os/IBinder;
    .end local v154    # "res":Z
    .end local v160    # "startId":I
    :pswitch_866
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 658
    invoke-static/range {p2 .. p2}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v49

    .line 659
    .restart local v49    # "className":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v50

    .line 660
    .restart local v50    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v51

    .line 661
    .restart local v51    # "id":I
    const/16 v52, 0x0

    .line 662
    .local v52, "notification":Landroid/app/Notification;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_88b

    .line 663
    sget-object v5, Landroid/app/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v52

    .end local v52    # "notification":Landroid/app/Notification;
    check-cast v52, Landroid/app/Notification;

    .line 665
    .restart local v52    # "notification":Landroid/app/Notification;
    :cond_88b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_89e

    const/16 v53, 0x1

    .local v53, "removeNotification":Z
    :goto_893
    move-object/from16 v48, p0

    .line 666
    invoke-virtual/range {v48 .. v53}, Landroid/app/ActivityManagerNative;->setServiceForeground(Landroid/content/ComponentName;Landroid/os/IBinder;ILandroid/app/Notification;Z)V

    .line 667
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 668
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 665
    .end local v53    # "removeNotification":Z
    :cond_89e
    const/16 v53, 0x0

    goto :goto_893

    .line 672
    .end local v49    # "className":Landroid/content/ComponentName;
    .end local v50    # "token":Landroid/os/IBinder;
    .end local v51    # "id":I
    .end local v52    # "notification":Landroid/app/Notification;
    :pswitch_8a1
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 673
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v95

    .line 674
    .restart local v95    # "b":Landroid/os/IBinder;
    invoke-static/range {v95 .. v95}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 675
    .restart local v6    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v50

    .line 676
    .restart local v50    # "token":Landroid/os/IBinder;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v57

    check-cast v57, Landroid/content/Intent;

    .line 677
    .restart local v57    # "service":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 678
    .restart local v8    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v95

    .line 679
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v60

    .line 680
    .restart local v60    # "fl":I
    invoke-static/range {v95 .. v95}, Landroid/app/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;

    move-result-object v59

    .local v59, "conn":Landroid/app/IServiceConnection;
    move-object/from16 v54, p0

    move-object/from16 v55, v6

    move-object/from16 v56, v50

    move-object/from16 v58, v8

    .line 681
    invoke-virtual/range {v54 .. v60}, Landroid/app/ActivityManagerNative;->bindService(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;I)I

    move-result v154

    .line 682
    .local v154, "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 683
    move-object/from16 v0, p3

    move/from16 v1, v154

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 684
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 688
    .end local v6    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "resolvedType":Ljava/lang/String;
    .end local v50    # "token":Landroid/os/IBinder;
    .end local v57    # "service":Landroid/content/Intent;
    .end local v59    # "conn":Landroid/app/IServiceConnection;
    .end local v60    # "fl":I
    .end local v95    # "b":Landroid/os/IBinder;
    .end local v154    # "res":I
    :pswitch_8e7
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 689
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v95

    .line 690
    .restart local v95    # "b":Landroid/os/IBinder;
    invoke-static/range {v95 .. v95}, Landroid/app/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;

    move-result-object v59

    .line 691
    .restart local v59    # "conn":Landroid/app/IServiceConnection;
    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unbindService(Landroid/app/IServiceConnection;)Z

    move-result v154

    .line 692
    .local v154, "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 693
    if-eqz v154, :cond_90c

    const/4 v5, 0x1

    :goto_904
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 694
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 693
    :cond_90c
    const/4 v5, 0x0

    goto :goto_904

    .line 698
    .end local v59    # "conn":Landroid/app/IServiceConnection;
    .end local v95    # "b":Landroid/os/IBinder;
    .end local v154    # "res":Z
    :pswitch_90e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 699
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v50

    .line 700
    .restart local v50    # "token":Landroid/os/IBinder;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    .line 701
    .restart local v7    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v57

    .line 702
    .local v57, "service":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v7, v2}, Landroid/app/ActivityManagerNative;->publishService(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/IBinder;)V

    .line 703
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 704
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 708
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v50    # "token":Landroid/os/IBinder;
    .end local v57    # "service":Landroid/os/IBinder;
    :pswitch_936
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 709
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v50

    .line 710
    .restart local v50    # "token":Landroid/os/IBinder;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    .line 711
    .restart local v7    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_962

    const/16 v107, 0x1

    .line 712
    .local v107, "doRebind":Z
    :goto_953
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move/from16 v2, v107

    invoke-virtual {v0, v1, v7, v2}, Landroid/app/ActivityManagerNative;->unbindFinished(Landroid/os/IBinder;Landroid/content/Intent;Z)V

    .line 713
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 714
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 711
    .end local v107    # "doRebind":Z
    :cond_962
    const/16 v107, 0x0

    goto :goto_953

    .line 718
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v50    # "token":Landroid/os/IBinder;
    :pswitch_965
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 719
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v50

    .line 720
    .restart local v50    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v68

    .line 721
    .local v68, "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v160

    .line 722
    .restart local v160    # "startId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v154

    .line 723
    .local v154, "res":I
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move/from16 v2, v68

    move/from16 v3, v160

    move/from16 v4, v154

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->serviceDoneExecuting(Landroid/os/IBinder;III)V

    .line 724
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 725
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 729
    .end local v50    # "token":Landroid/os/IBinder;
    .end local v68    # "type":I
    .end local v154    # "res":I
    .end local v160    # "startId":I
    :pswitch_98f
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 730
    invoke-static/range {p2 .. p2}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v49

    .line 731
    .restart local v49    # "className":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 732
    .restart local v16    # "profileFile":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v60

    .line 733
    .restart local v60    # "fl":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v65

    .line 734
    .local v65, "arguments":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v95

    .line 735
    .restart local v95    # "b":Landroid/os/IBinder;
    invoke-static/range {v95 .. v95}, Landroid/app/IInstrumentationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IInstrumentationWatcher;

    move-result-object v66

    .local v66, "w":Landroid/app/IInstrumentationWatcher;
    move-object/from16 v61, p0

    move-object/from16 v62, v49

    move-object/from16 v63, v16

    move/from16 v64, v60

    .line 736
    invoke-virtual/range {v61 .. v66}, Landroid/app/ActivityManagerNative;->startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;ILandroid/os/Bundle;Landroid/app/IInstrumentationWatcher;)Z

    move-result v154

    .line 737
    .local v154, "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 738
    if-eqz v154, :cond_9c8

    const/4 v5, 0x1

    :goto_9c0
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 739
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 738
    :cond_9c8
    const/4 v5, 0x0

    goto :goto_9c0

    .line 744
    .end local v16    # "profileFile":Ljava/lang/String;
    .end local v49    # "className":Landroid/content/ComponentName;
    .end local v60    # "fl":I
    .end local v65    # "arguments":Landroid/os/Bundle;
    .end local v66    # "w":Landroid/app/IInstrumentationWatcher;
    .end local v95    # "b":Landroid/os/IBinder;
    .end local v154    # "res":Z
    :pswitch_9ca
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 745
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v95

    .line 746
    .restart local v95    # "b":Landroid/os/IBinder;
    invoke-static/range {v95 .. v95}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 747
    .restart local v6    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v42

    .line 748
    .restart local v42    # "resultCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v157

    .line 749
    .local v157, "results":Landroid/os/Bundle;
    move-object/from16 v0, p0

    move/from16 v1, v42

    move-object/from16 v2, v157

    invoke-virtual {v0, v6, v1, v2}, Landroid/app/ActivityManagerNative;->finishInstrumentation(Landroid/app/IApplicationThread;ILandroid/os/Bundle;)V

    .line 750
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 751
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 755
    .end local v6    # "app":Landroid/app/IApplicationThread;
    .end local v42    # "resultCode":I
    .end local v95    # "b":Landroid/os/IBinder;
    .end local v157    # "results":Landroid/os/Bundle;
    :pswitch_9f0
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 756
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v30

    .line 757
    .restart local v30    # "config":Landroid/content/res/Configuration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 758
    const/4 v5, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 759
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 763
    .end local v30    # "config":Landroid/content/res/Configuration;
    :pswitch_a09
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 764
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/content/res/Configuration;

    .line 765
    .restart local v30    # "config":Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->updateConfiguration(Landroid/content/res/Configuration;)V

    .line 766
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 767
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 771
    .end local v30    # "config":Landroid/content/res/Configuration;
    :pswitch_a27
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 772
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v50

    .line 773
    .restart local v50    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v153

    .line 774
    .local v153, "requestedOrientation":I
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move/from16 v2, v153

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setRequestedOrientation(Landroid/os/IBinder;I)V

    .line 775
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 776
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 780
    .end local v50    # "token":Landroid/os/IBinder;
    .end local v153    # "requestedOrientation":I
    :pswitch_a45
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 781
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v50

    .line 782
    .restart local v50    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getRequestedOrientation(Landroid/os/IBinder;)I

    move-result v152

    .line 783
    .local v152, "req":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 784
    move-object/from16 v0, p3

    move/from16 v1, v152

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 785
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 789
    .end local v50    # "token":Landroid/os/IBinder;
    .end local v152    # "req":I
    :pswitch_a65
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 790
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v50

    .line 791
    .restart local v50    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getActivityClassForToken(Landroid/os/IBinder;)Landroid/content/ComponentName;

    move-result-object v103

    .line 792
    .restart local v103    # "cn":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 793
    move-object/from16 v0, v103

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 794
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 798
    .end local v50    # "token":Landroid/os/IBinder;
    .end local v103    # "cn":Landroid/content/ComponentName;
    :pswitch_a85
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 799
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v50

    .line 800
    .restart local v50    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 801
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageForToken(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 802
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 806
    .end local v50    # "token":Landroid/os/IBinder;
    :pswitch_aa3
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 807
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v68

    .line 808
    .restart local v68    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v33

    .line 809
    .restart local v33    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v50

    .line 810
    .restart local v50    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 811
    .restart local v12    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 814
    .restart local v13    # "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_af7

    .line 815
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v73

    check-cast v73, [Landroid/content/Intent;

    .line 816
    .local v73, "requestIntents":[Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v74

    .line 821
    .local v74, "requestResolvedTypes":[Ljava/lang/String;
    :goto_ad2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v60

    .restart local v60    # "fl":I
    move-object/from16 v67, p0

    move-object/from16 v69, v33

    move-object/from16 v70, v50

    move-object/from16 v71, v12

    move/from16 v72, v13

    move/from16 v75, v60

    .line 822
    invoke-virtual/range {v67 .. v75}, Landroid/app/ActivityManagerNative;->getIntentSender(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;I)Landroid/content/IIntentSender;

    move-result-object v154

    .line 825
    .local v154, "res":Landroid/content/IIntentSender;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 826
    if-eqz v154, :cond_afc

    invoke-interface/range {v154 .. v154}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    :goto_aef
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 827
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 818
    .end local v60    # "fl":I
    .end local v73    # "requestIntents":[Landroid/content/Intent;
    .end local v74    # "requestResolvedTypes":[Ljava/lang/String;
    .end local v154    # "res":Landroid/content/IIntentSender;
    :cond_af7
    const/16 v73, 0x0

    .line 819
    .restart local v73    # "requestIntents":[Landroid/content/Intent;
    const/16 v74, 0x0

    .restart local v74    # "requestResolvedTypes":[Ljava/lang/String;
    goto :goto_ad2

    .line 826
    .restart local v60    # "fl":I
    .restart local v154    # "res":Landroid/content/IIntentSender;
    :cond_afc
    const/4 v5, 0x0

    goto :goto_aef

    .line 831
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v33    # "packageName":Ljava/lang/String;
    .end local v50    # "token":Landroid/os/IBinder;
    .end local v60    # "fl":I
    .end local v68    # "type":I
    .end local v73    # "requestIntents":[Landroid/content/Intent;
    .end local v74    # "requestResolvedTypes":[Ljava/lang/String;
    .end local v154    # "res":Landroid/content/IIntentSender;
    :pswitch_afe
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 832
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v148

    .line 834
    .local v148, "r":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v148

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->cancelIntentSender(Landroid/content/IIntentSender;)V

    .line 835
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 836
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 840
    .end local v148    # "r":Landroid/content/IIntentSender;
    :pswitch_b1a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 841
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v148

    .line 843
    .restart local v148    # "r":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v148

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageForIntentSender(Landroid/content/IIntentSender;)Ljava/lang/String;

    move-result-object v154

    .line 844
    .local v154, "res":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 845
    move-object/from16 v0, p3

    move-object/from16 v1, v154

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 846
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 850
    .end local v148    # "r":Landroid/content/IIntentSender;
    .end local v154    # "res":Ljava/lang/String;
    :pswitch_b3e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 851
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v128

    .line 852
    .local v128, "max":I
    move-object/from16 v0, p0

    move/from16 v1, v128

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setProcessLimit(I)V

    .line 853
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 854
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 858
    .end local v128    # "max":I
    :pswitch_b56
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 859
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getProcessLimit()I

    move-result v120

    .line 860
    .local v120, "limit":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 861
    move-object/from16 v0, p3

    move/from16 v1, v120

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 862
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 866
    .end local v120    # "limit":I
    :pswitch_b6e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 867
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v50

    .line 868
    .restart local v50    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v141

    .line 869
    .local v141, "pid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_b96

    const/16 v118, 0x1

    .line 870
    .local v118, "isForeground":Z
    :goto_b85
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move/from16 v2, v141

    move/from16 v3, v118

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->setProcessForeground(Landroid/os/IBinder;IZ)V

    .line 871
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 872
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 869
    .end local v118    # "isForeground":Z
    :cond_b96
    const/16 v118, 0x0

    goto :goto_b85

    .line 876
    .end local v50    # "token":Landroid/os/IBinder;
    .end local v141    # "pid":I
    :pswitch_b99
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 877
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v36

    .line 878
    .restart local v36    # "perm":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v141

    .line 879
    .restart local v141    # "pid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v82

    .line 880
    .local v82, "uid":I
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move/from16 v2, v141

    move/from16 v3, v82

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->checkPermission(Ljava/lang/String;II)I

    move-result v154

    .line 881
    .local v154, "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 882
    move-object/from16 v0, p3

    move/from16 v1, v154

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 883
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 887
    .end local v36    # "perm":Ljava/lang/String;
    .end local v82    # "uid":I
    .end local v141    # "pid":I
    .end local v154    # "res":I
    :pswitch_bc5
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 888
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v87

    check-cast v87, Landroid/net/Uri;

    .line 889
    .local v87, "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v141

    .line 890
    .restart local v141    # "pid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v82

    .line 891
    .restart local v82    # "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v88

    .line 892
    .local v88, "mode":I
    move-object/from16 v0, p0

    move-object/from16 v1, v87

    move/from16 v2, v141

    move/from16 v3, v82

    move/from16 v4, v88

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->checkUriPermission(Landroid/net/Uri;III)I

    move-result v154

    .line 893
    .restart local v154    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 894
    move-object/from16 v0, p3

    move/from16 v1, v154

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 895
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 899
    .end local v82    # "uid":I
    .end local v87    # "uri":Landroid/net/Uri;
    .end local v88    # "mode":I
    .end local v141    # "pid":I
    .end local v154    # "res":I
    :pswitch_bfd
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 900
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v33

    .line 901
    .restart local v33    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    move-result-object v136

    .line 903
    .local v136, "observer":Landroid/content/pm/IPackageDataObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v136

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)Z

    move-result v154

    .line 904
    .local v154, "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 905
    if-eqz v154, :cond_c28

    const/4 v5, 0x1

    :goto_c20
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 906
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 905
    :cond_c28
    const/4 v5, 0x0

    goto :goto_c20

    .line 910
    .end local v33    # "packageName":Ljava/lang/String;
    .end local v136    # "observer":Landroid/content/pm/IPackageDataObserver;
    .end local v154    # "res":Z
    :pswitch_c2a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 911
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v95

    .line 912
    .restart local v95    # "b":Landroid/os/IBinder;
    invoke-static/range {v95 .. v95}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 913
    .restart local v6    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v86

    .line 914
    .local v86, "targetPkg":Ljava/lang/String;
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v87

    check-cast v87, Landroid/net/Uri;

    .line 915
    .restart local v87    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v88

    .line 916
    .restart local v88    # "mode":I
    move-object/from16 v0, p0

    move-object/from16 v1, v86

    move-object/from16 v2, v87

    move/from16 v3, v88

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/app/ActivityManagerNative;->grantUriPermission(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/net/Uri;I)V

    .line 917
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 918
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 922
    .end local v6    # "app":Landroid/app/IApplicationThread;
    .end local v86    # "targetPkg":Ljava/lang/String;
    .end local v87    # "uri":Landroid/net/Uri;
    .end local v88    # "mode":I
    .end local v95    # "b":Landroid/os/IBinder;
    :pswitch_c5c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 923
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v95

    .line 924
    .restart local v95    # "b":Landroid/os/IBinder;
    invoke-static/range {v95 .. v95}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 925
    .restart local v6    # "app":Landroid/app/IApplicationThread;
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v87

    check-cast v87, Landroid/net/Uri;

    .line 926
    .restart local v87    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v88

    .line 927
    .restart local v88    # "mode":I
    move-object/from16 v0, p0

    move-object/from16 v1, v87

    move/from16 v2, v88

    invoke-virtual {v0, v6, v1, v2}, Landroid/app/ActivityManagerNative;->revokeUriPermission(Landroid/app/IApplicationThread;Landroid/net/Uri;I)V

    .line 928
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 929
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 933
    .end local v6    # "app":Landroid/app/IApplicationThread;
    .end local v87    # "uri":Landroid/net/Uri;
    .end local v88    # "mode":I
    .end local v95    # "b":Landroid/os/IBinder;
    :pswitch_c88
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 934
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v95

    .line 935
    .restart local v95    # "b":Landroid/os/IBinder;
    invoke-static/range {v95 .. v95}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 936
    .restart local v6    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_cac

    const/16 v170, 0x1

    .line 937
    .local v170, "waiting":Z
    :goto_c9f
    move-object/from16 v0, p0

    move/from16 v1, v170

    invoke-virtual {v0, v6, v1}, Landroid/app/ActivityManagerNative;->showWaitingForDebugger(Landroid/app/IApplicationThread;Z)V

    .line 938
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 939
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 936
    .end local v170    # "waiting":Z
    :cond_cac
    const/16 v170, 0x0

    goto :goto_c9f

    .line 943
    .end local v6    # "app":Landroid/app/IApplicationThread;
    .end local v95    # "b":Landroid/os/IBinder;
    :pswitch_caf
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 944
    new-instance v131, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct/range {v131 .. v131}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 945
    .local v131, "mi":Landroid/app/ActivityManager$MemoryInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v131

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 946
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 947
    const/4 v5, 0x0

    move-object/from16 v0, v131

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/app/ActivityManager$MemoryInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 948
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 952
    .end local v131    # "mi":Landroid/app/ActivityManager$MemoryInfo;
    :pswitch_cd0
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 953
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->unhandledBack()V

    .line 954
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 955
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 959
    :pswitch_ce0
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 960
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v87

    .line 961
    .restart local v87    # "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    move-object/from16 v1, v87

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->openContentUri(Landroid/net/Uri;)Landroid/os/ParcelFileDescriptor;

    move-result-object v139

    .line 962
    .local v139, "pfd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 963
    if-eqz v139, :cond_d0d

    .line 964
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 965
    const/4 v5, 0x1

    move-object/from16 v0, v139

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 969
    :goto_d0a
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 967
    :cond_d0d
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_d0a

    .line 973
    .end local v87    # "uri":Landroid/net/Uri;
    .end local v139    # "pfd":Landroid/os/ParcelFileDescriptor;
    :pswitch_d14
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 974
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->goingToSleep()V

    .line 975
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 976
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 980
    :pswitch_d24
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 981
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->wakingUp()V

    .line 982
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 983
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 987
    :pswitch_d34
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 988
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v144

    .line 989
    .local v144, "pn":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_d60

    const/16 v172, 0x1

    .line 990
    .local v172, "wfd":Z
    :goto_d47
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_d63

    const/16 v138, 0x1

    .line 991
    .local v138, "per":Z
    :goto_d4f
    move-object/from16 v0, p0

    move-object/from16 v1, v144

    move/from16 v2, v172

    move/from16 v3, v138

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->setDebugApp(Ljava/lang/String;ZZ)V

    .line 992
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 993
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 989
    .end local v138    # "per":Z
    .end local v172    # "wfd":Z
    :cond_d60
    const/16 v172, 0x0

    goto :goto_d47

    .line 990
    .restart local v172    # "wfd":Z
    :cond_d63
    const/16 v138, 0x0

    goto :goto_d4f

    .line 997
    .end local v144    # "pn":Ljava/lang/String;
    .end local v172    # "wfd":Z
    :pswitch_d66
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 998
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_d82

    const/16 v108, 0x1

    .line 999
    .local v108, "enabled":Z
    :goto_d75
    move-object/from16 v0, p0

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setAlwaysFinish(Z)V

    .line 1000
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1001
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 998
    .end local v108    # "enabled":Z
    :cond_d82
    const/16 v108, 0x0

    goto :goto_d75

    .line 1005
    :pswitch_d85
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1006
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/IActivityController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityController;

    move-result-object v171

    .line 1008
    .local v171, "watcher":Landroid/app/IActivityController;
    move-object/from16 v0, p0

    move-object/from16 v1, v171

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setActivityController(Landroid/app/IActivityController;)V

    .line 1009
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1013
    .end local v171    # "watcher":Landroid/app/IActivityController;
    :pswitch_d9e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1014
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->enterSafeMode()V

    .line 1015
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1016
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1020
    :pswitch_dae
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1021
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v117

    .line 1023
    .local v117, "is":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->noteWakeupAlarm(Landroid/content/IIntentSender;)V

    .line 1024
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1025
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1029
    .end local v117    # "is":Landroid/content/IIntentSender;
    :pswitch_dca
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1030
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v142

    .line 1031
    .local v142, "pids":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v149

    .line 1032
    .local v149, "reason":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_dfb

    const/16 v158, 0x1

    .line 1033
    .local v158, "secure":Z
    :goto_de1
    move-object/from16 v0, p0

    move-object/from16 v1, v142

    move-object/from16 v2, v149

    move/from16 v3, v158

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->killPids([ILjava/lang/String;Z)Z

    move-result v154

    .line 1034
    .restart local v154    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1035
    if-eqz v154, :cond_dfe

    const/4 v5, 0x1

    :goto_df3
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1036
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1032
    .end local v154    # "res":Z
    .end local v158    # "secure":Z
    :cond_dfb
    const/16 v158, 0x0

    goto :goto_de1

    .line 1035
    .restart local v154    # "res":Z
    .restart local v158    # "secure":Z
    :cond_dfe
    const/4 v5, 0x0

    goto :goto_df3

    .line 1040
    .end local v142    # "pids":[I
    .end local v149    # "reason":Ljava/lang/String;
    .end local v154    # "res":Z
    .end local v158    # "secure":Z
    :pswitch_e00
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1041
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v143

    .line 1042
    .local v143, "pkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v102

    .line 1043
    .local v102, "cls":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v90

    .line 1044
    .local v90, "action":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v113

    .line 1045
    .local v113, "indata":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v143

    move-object/from16 v2, v102

    move-object/from16 v3, v90

    move-object/from16 v4, v113

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->startRunning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1046
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1047
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1051
    .end local v90    # "action":Ljava/lang/String;
    .end local v102    # "cls":Ljava/lang/String;
    .end local v113    # "indata":Ljava/lang/String;
    .end local v143    # "pkg":Ljava/lang/String;
    :pswitch_e2a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1052
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1053
    .local v6, "app":Landroid/os/IBinder;
    new-instance v101, Landroid/app/ApplicationErrorReport$CrashInfo;

    move-object/from16 v0, v101

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>(Landroid/os/Parcel;)V

    .line 1054
    .local v101, "ci":Landroid/app/ApplicationErrorReport$CrashInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v6, v1}, Landroid/app/ActivityManagerNative;->handleApplicationCrash(Landroid/os/IBinder;Landroid/app/ApplicationErrorReport$CrashInfo;)V

    .line 1055
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1056
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1060
    .end local v6    # "app":Landroid/os/IBinder;
    .end local v101    # "ci":Landroid/app/ApplicationErrorReport$CrashInfo;
    :pswitch_e4b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1061
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1062
    .restart local v6    # "app":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v164

    .line 1063
    .local v164, "tag":Ljava/lang/String;
    new-instance v101, Landroid/app/ApplicationErrorReport$CrashInfo;

    move-object/from16 v0, v101

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>(Landroid/os/Parcel;)V

    .line 1064
    .restart local v101    # "ci":Landroid/app/ApplicationErrorReport$CrashInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v164

    move-object/from16 v2, v101

    invoke-virtual {v0, v6, v1, v2}, Landroid/app/ActivityManagerNative;->handleApplicationWtf(Landroid/os/IBinder;Ljava/lang/String;Landroid/app/ApplicationErrorReport$CrashInfo;)Z

    move-result v154

    .line 1065
    .restart local v154    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1066
    if-eqz v154, :cond_e7b

    const/4 v5, 0x1

    :goto_e73
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1067
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1066
    :cond_e7b
    const/4 v5, 0x0

    goto :goto_e73

    .line 1071
    .end local v6    # "app":Landroid/os/IBinder;
    .end local v101    # "ci":Landroid/app/ApplicationErrorReport$CrashInfo;
    .end local v154    # "res":Z
    .end local v164    # "tag":Ljava/lang/String;
    :pswitch_e7d
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1072
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1073
    .restart local v6    # "app":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v169

    .line 1074
    .local v169, "violationMask":I
    new-instance v114, Landroid/os/StrictMode$ViolationInfo;

    move-object/from16 v0, v114

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/os/StrictMode$ViolationInfo;-><init>(Landroid/os/Parcel;)V

    .line 1075
    .local v114, "info":Landroid/os/StrictMode$ViolationInfo;
    move-object/from16 v0, p0

    move/from16 v1, v169

    move-object/from16 v2, v114

    invoke-virtual {v0, v6, v1, v2}, Landroid/app/ActivityManagerNative;->handleApplicationStrictModeViolation(Landroid/os/IBinder;ILandroid/os/StrictMode$ViolationInfo;)V

    .line 1076
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1077
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1081
    .end local v6    # "app":Landroid/os/IBinder;
    .end local v114    # "info":Landroid/os/StrictMode$ViolationInfo;
    .end local v169    # "violationMask":I
    :pswitch_ea4
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1082
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v159

    .line 1083
    .local v159, "sig":I
    move-object/from16 v0, p0

    move/from16 v1, v159

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->signalPersistentProcesses(I)V

    .line 1084
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1085
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1089
    .end local v159    # "sig":I
    :pswitch_ebc
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1090
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v33

    .line 1091
    .restart local v33    # "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->killBackgroundProcesses(Ljava/lang/String;)V

    .line 1092
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1093
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1097
    .end local v33    # "packageName":Ljava/lang/String;
    :pswitch_ed4
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1098
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->killAllBackgroundProcesses()V

    .line 1099
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1100
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1104
    :pswitch_ee4
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1105
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v33

    .line 1106
    .restart local v33    # "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->forceStopPackage(Ljava/lang/String;)V

    .line 1107
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1108
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1112
    .end local v33    # "packageName":Ljava/lang/String;
    :pswitch_efc
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1113
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v30

    .line 1114
    .local v30, "config":Landroid/content/pm/ConfigurationInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1115
    const/4 v5, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/content/pm/ConfigurationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1116
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1120
    .end local v30    # "config":Landroid/content/pm/ConfigurationInfo;
    :pswitch_f15
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1121
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v76

    .line 1122
    .local v76, "process":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_f4e

    const/16 v77, 0x1

    .line 1123
    .local v77, "start":Z
    :goto_f28
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v80

    .line 1124
    .local v80, "profileType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v78

    .line 1125
    .local v78, "path":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_f51

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v79

    .local v79, "fd":Landroid/os/ParcelFileDescriptor;
    :goto_f3a
    move-object/from16 v75, p0

    .line 1127
    invoke-virtual/range {v75 .. v80}, Landroid/app/ActivityManagerNative;->profileControl(Ljava/lang/String;ZLjava/lang/String;Landroid/os/ParcelFileDescriptor;I)Z

    move-result v154

    .line 1128
    .restart local v154    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1129
    if-eqz v154, :cond_f54

    const/4 v5, 0x1

    :goto_f46
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1130
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1122
    .end local v77    # "start":Z
    .end local v78    # "path":Ljava/lang/String;
    .end local v79    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v80    # "profileType":I
    .end local v154    # "res":Z
    :cond_f4e
    const/16 v77, 0x0

    goto :goto_f28

    .line 1125
    .restart local v77    # "start":Z
    .restart local v78    # "path":Ljava/lang/String;
    .restart local v80    # "profileType":I
    :cond_f51
    const/16 v79, 0x0

    goto :goto_f3a

    .line 1129
    .restart local v79    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v154    # "res":Z
    :cond_f54
    const/4 v5, 0x0

    goto :goto_f46

    .line 1134
    .end local v76    # "process":Ljava/lang/String;
    .end local v77    # "start":Z
    .end local v78    # "path":Ljava/lang/String;
    .end local v79    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v80    # "profileType":I
    .end local v154    # "res":Z
    :pswitch_f56
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1135
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/ActivityManagerNative;->shutdown(I)Z

    move-result v154

    .line 1136
    .restart local v154    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1137
    if-eqz v154, :cond_f75

    const/4 v5, 0x1

    :goto_f6d
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1138
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1137
    :cond_f75
    const/4 v5, 0x0

    goto :goto_f6d

    .line 1142
    .end local v154    # "res":Z
    :pswitch_f77
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1143
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->stopAppSwitches()V

    .line 1144
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1145
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1149
    :pswitch_f87
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1150
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->resumeAppSwitches()V

    .line 1151
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1152
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1156
    :pswitch_f97
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1157
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v57

    check-cast v57, Landroid/content/Intent;

    .line 1158
    .local v57, "service":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1159
    .restart local v8    # "resolvedType":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-virtual {v0, v1, v8}, Landroid/app/ActivityManagerNative;->peekService(Landroid/content/Intent;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v97

    .line 1160
    .local v97, "binder":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1161
    move-object/from16 v0, p3

    move-object/from16 v1, v97

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1162
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1166
    .end local v8    # "resolvedType":Ljava/lang/String;
    .end local v57    # "service":Landroid/content/Intent;
    .end local v97    # "binder":Landroid/os/IBinder;
    :pswitch_fc1
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1167
    sget-object v5, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v114

    check-cast v114, Landroid/content/pm/ApplicationInfo;

    .line 1168
    .local v114, "info":Landroid/content/pm/ApplicationInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v96

    .line 1169
    .local v96, "backupRestoreMode":I
    move-object/from16 v0, p0

    move-object/from16 v1, v114

    move/from16 v2, v96

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->bindBackupAgent(Landroid/content/pm/ApplicationInfo;I)Z

    move-result v163

    .line 1170
    .local v163, "success":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1171
    if-eqz v163, :cond_fee

    const/4 v5, 0x1

    :goto_fe6
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1172
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1171
    :cond_fee
    const/4 v5, 0x0

    goto :goto_fe6

    .line 1176
    .end local v96    # "backupRestoreMode":I
    .end local v114    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v163    # "success":Z
    :pswitch_ff0
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1177
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v33

    .line 1178
    .restart local v33    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v91

    .line 1179
    .local v91, "agent":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v91

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->backupAgentCreated(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1180
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1181
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1185
    .end local v33    # "packageName":Ljava/lang/String;
    .end local v91    # "agent":Landroid/os/IBinder;
    :pswitch_100e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1186
    sget-object v5, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v114

    check-cast v114, Landroid/content/pm/ApplicationInfo;

    .line 1187
    .restart local v114    # "info":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v114

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 1188
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1189
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1193
    .end local v114    # "info":Landroid/content/pm/ApplicationInfo;
    :pswitch_102c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1194
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/IActivityWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityWatcher;

    move-result-object v171

    .line 1196
    .local v171, "watcher":Landroid/app/IActivityWatcher;
    move-object/from16 v0, p0

    move-object/from16 v1, v171

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->registerActivityWatcher(Landroid/app/IActivityWatcher;)V

    .line 1197
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1201
    .end local v171    # "watcher":Landroid/app/IActivityWatcher;
    :pswitch_1045
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1202
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/IActivityWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityWatcher;

    move-result-object v171

    .line 1204
    .restart local v171    # "watcher":Landroid/app/IActivityWatcher;
    move-object/from16 v0, p0

    move-object/from16 v1, v171

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unregisterActivityWatcher(Landroid/app/IActivityWatcher;)V

    .line 1205
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1210
    .end local v171    # "watcher":Landroid/app/IActivityWatcher;
    :pswitch_105e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1211
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v82

    .line 1212
    .restart local v82    # "uid":I
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    .line 1213
    .restart local v7    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1214
    .restart local v8    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 1215
    .local v11, "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1216
    .restart local v12    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 1217
    .restart local v13    # "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_10a9

    const/4 v14, 0x1

    .restart local v14    # "onlyIfNeeded":Z
    :goto_108a
    move-object/from16 v81, p0

    move-object/from16 v83, v7

    move-object/from16 v84, v8

    move-object/from16 v85, v11

    move-object/from16 v86, v12

    move/from16 v87, v13

    move/from16 v88, v14

    .line 1218
    invoke-virtual/range {v81 .. v88}, Landroid/app/ActivityManagerNative;->startActivityInPackage(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IZ)I

    move-result v156

    .line 1220
    .local v156, "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1221
    move-object/from16 v0, p3

    move/from16 v1, v156

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1222
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1217
    .end local v14    # "onlyIfNeeded":Z
    .end local v156    # "result":I
    :cond_10a9
    const/4 v14, 0x0

    goto :goto_108a

    .line 1226
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v8    # "resolvedType":Ljava/lang/String;
    .end local v11    # "resultTo":Landroid/os/IBinder;
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v82    # "uid":I
    :pswitch_10ab
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1227
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v143

    .line 1228
    .restart local v143    # "pkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v82

    .line 1229
    .restart local v82    # "uid":I
    move-object/from16 v0, p0

    move-object/from16 v1, v143

    move/from16 v2, v82

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->killApplicationWithUid(Ljava/lang/String;I)V

    .line 1230
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1231
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1235
    .end local v82    # "uid":I
    .end local v143    # "pkg":Ljava/lang/String;
    :pswitch_10c9
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1236
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v149

    .line 1237
    .restart local v149    # "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v149

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->closeSystemDialogs(Ljava/lang/String;)V

    .line 1238
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1239
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1243
    .end local v149    # "reason":Ljava/lang/String;
    :pswitch_10e1
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1244
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v142

    .line 1245
    .restart local v142    # "pids":[I
    move-object/from16 v0, p0

    move-object/from16 v1, v142

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v154

    .line 1246
    .local v154, "res":[Landroid/os/Debug$MemoryInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1247
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v154

    invoke-virtual {v0, v1, v5}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1248
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1252
    .end local v142    # "pids":[I
    .end local v154    # "res":[Landroid/os/Debug$MemoryInfo;
    :pswitch_1102
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1253
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v145

    .line 1254
    .local v145, "processName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v82

    .line 1255
    .restart local v82    # "uid":I
    move-object/from16 v0, p0

    move-object/from16 v1, v145

    move/from16 v2, v82

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->killApplicationProcess(Ljava/lang/String;I)V

    .line 1256
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1257
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1261
    .end local v82    # "uid":I
    .end local v145    # "processName":Ljava/lang/String;
    :pswitch_1120
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1262
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v50

    .line 1263
    .restart local v50    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v33

    .line 1264
    .restart local v33    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v109

    .line 1265
    .local v109, "enterAnim":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v110

    .line 1266
    .local v110, "exitAnim":I
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v33

    move/from16 v3, v109

    move/from16 v4, v110

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->overridePendingTransition(Landroid/os/IBinder;Ljava/lang/String;II)V

    .line 1267
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1268
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1272
    .end local v33    # "packageName":Ljava/lang/String;
    .end local v50    # "token":Landroid/os/IBinder;
    .end local v109    # "enterAnim":I
    .end local v110    # "exitAnim":I
    :pswitch_114a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1273
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->isUserAMonkey()Z

    move-result v93

    .line 1274
    .local v93, "areThey":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1275
    if-eqz v93, :cond_1163

    const/4 v5, 0x1

    :goto_115b
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1276
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1275
    :cond_1163
    const/4 v5, 0x0

    goto :goto_115b

    .line 1280
    .end local v93    # "areThey":Z
    :pswitch_1165
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1281
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->finishHeavyWeightApp()V

    .line 1282
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1283
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1287
    :pswitch_1175
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1288
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v50

    .line 1289
    .restart local v50    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isImmersive(Landroid/os/IBinder;)Z

    move-result v119

    .line 1290
    .local v119, "isit":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1291
    if-eqz v119, :cond_1196

    const/4 v5, 0x1

    :goto_118e
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1292
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1291
    :cond_1196
    const/4 v5, 0x0

    goto :goto_118e

    .line 1296
    .end local v50    # "token":Landroid/os/IBinder;
    .end local v119    # "isit":Z
    :pswitch_1198
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1297
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v50

    .line 1298
    .restart local v50    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v5, v0, :cond_11be

    const/16 v112, 0x1

    .line 1299
    .local v112, "imm":Z
    :goto_11af
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move/from16 v2, v112

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setImmersive(Landroid/os/IBinder;Z)V

    .line 1300
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1301
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1298
    .end local v112    # "imm":Z
    :cond_11be
    const/16 v112, 0x0

    goto :goto_11af

    .line 1305
    .end local v50    # "token":Landroid/os/IBinder;
    :pswitch_11c1
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1306
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->isTopActivityImmersive()Z

    move-result v119

    .line 1307
    .restart local v119    # "isit":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1308
    if-eqz v119, :cond_11da

    const/4 v5, 0x1

    :goto_11d2
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1309
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1308
    :cond_11da
    const/4 v5, 0x0

    goto :goto_11d2

    .line 1313
    .end local v119    # "isit":Z
    :pswitch_11dc
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1314
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v82

    .line 1315
    .restart local v82    # "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v115

    .line 1316
    .local v115, "initialPid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v33

    .line 1317
    .restart local v33    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v130

    .line 1318
    .local v130, "message":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v82

    move/from16 v2, v115

    move-object/from16 v3, v33

    move-object/from16 v4, v130

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->crashApplication(IILjava/lang/String;Ljava/lang/String;)V

    .line 1319
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1320
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1324
    .end local v33    # "packageName":Ljava/lang/String;
    .end local v82    # "uid":I
    .end local v115    # "initialPid":I
    .end local v130    # "message":Ljava/lang/String;
    :pswitch_1206
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1325
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v87

    check-cast v87, Landroid/net/Uri;

    .line 1326
    .restart local v87    # "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    move-object/from16 v1, v87

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getProviderMimeType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v68

    .line 1327
    .local v68, "type":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1328
    move-object/from16 v0, p3

    move-object/from16 v1, v68

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1329
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1333
    .end local v68    # "type":Ljava/lang/String;
    .end local v87    # "uri":Landroid/net/Uri;
    :pswitch_122c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1334
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v134

    .line 1335
    .restart local v134    # "name":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v134

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v36

    .line 1336
    .local v36, "perm":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1337
    move-object/from16 v0, p3

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1338
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1342
    .end local v36    # "perm":Landroid/os/IBinder;
    .end local v134    # "name":Ljava/lang/String;
    :pswitch_124c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1343
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v84

    .line 1344
    .local v84, "owner":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v85

    .line 1345
    .local v85, "fromUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v86

    .line 1346
    .restart local v86    # "targetPkg":Ljava/lang/String;
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v87

    check-cast v87, Landroid/net/Uri;

    .line 1347
    .restart local v87    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v88

    .restart local v88    # "mode":I
    move-object/from16 v83, p0

    .line 1348
    invoke-virtual/range {v83 .. v88}, Landroid/app/ActivityManagerNative;->grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;I)V

    .line 1349
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1350
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1354
    .end local v84    # "owner":Landroid/os/IBinder;
    .end local v85    # "fromUid":I
    .end local v86    # "targetPkg":Ljava/lang/String;
    .end local v87    # "uri":Landroid/net/Uri;
    .end local v88    # "mode":I
    :pswitch_1278
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1355
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v84

    .line 1356
    .restart local v84    # "owner":Landroid/os/IBinder;
    const/16 v87, 0x0

    .line 1357
    .restart local v87    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1292

    .line 1358
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1360
    :cond_1292
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v88

    .line 1361
    .restart local v88    # "mode":I
    move-object/from16 v0, p0

    move-object/from16 v1, v84

    move-object/from16 v2, v87

    move/from16 v3, v88

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;I)V

    .line 1362
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1363
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1367
    .end local v84    # "owner":Landroid/os/IBinder;
    .end local v87    # "uri":Landroid/net/Uri;
    .end local v88    # "mode":I
    :pswitch_12a7
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1368
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v100

    .line 1369
    .local v100, "callingUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v86

    .line 1370
    .restart local v86    # "targetPkg":Ljava/lang/String;
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v87

    check-cast v87, Landroid/net/Uri;

    .line 1371
    .restart local v87    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v132

    .line 1372
    .local v132, "modeFlags":I
    move-object/from16 v0, p0

    move/from16 v1, v100

    move-object/from16 v2, v86

    move-object/from16 v3, v87

    move/from16 v4, v132

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->checkGrantUriPermission(ILjava/lang/String;Landroid/net/Uri;I)I

    move-result v154

    .line 1373
    .local v154, "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1374
    move-object/from16 v0, p3

    move/from16 v1, v154

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1375
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1379
    .end local v86    # "targetPkg":Ljava/lang/String;
    .end local v87    # "uri":Landroid/net/Uri;
    .end local v100    # "callingUid":I
    .end local v132    # "modeFlags":I
    .end local v154    # "res":I
    :pswitch_12df
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1380
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v76

    .line 1381
    .restart local v76    # "process":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_131c

    const/16 v126, 0x1

    .line 1382
    .local v126, "managed":Z
    :goto_12f2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v78

    .line 1383
    .restart local v78    # "path":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_131f

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v79

    .line 1385
    .restart local v79    # "fd":Landroid/os/ParcelFileDescriptor;
    :goto_1300
    move-object/from16 v0, p0

    move-object/from16 v1, v76

    move/from16 v2, v126

    move-object/from16 v3, v78

    move-object/from16 v4, v79

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->dumpHeap(Ljava/lang/String;ZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)Z

    move-result v154

    .line 1386
    .local v154, "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1387
    if-eqz v154, :cond_1322

    const/4 v5, 0x1

    :goto_1314
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1388
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1381
    .end local v78    # "path":Ljava/lang/String;
    .end local v79    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v126    # "managed":Z
    .end local v154    # "res":Z
    :cond_131c
    const/16 v126, 0x0

    goto :goto_12f2

    .line 1383
    .restart local v78    # "path":Ljava/lang/String;
    .restart local v126    # "managed":Z
    :cond_131f
    const/16 v79, 0x0

    goto :goto_1300

    .line 1387
    .restart local v79    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v154    # "res":Z
    :cond_1322
    const/4 v5, 0x0

    goto :goto_1314

    .line 1393
    .end local v76    # "process":Ljava/lang/String;
    .end local v78    # "path":Ljava/lang/String;
    .end local v79    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v126    # "managed":Z
    .end local v154    # "res":Z
    :pswitch_1324
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1394
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v82

    .line 1395
    .restart local v82    # "uid":I
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v116

    check-cast v116, [Landroid/content/Intent;

    .line 1396
    .local v116, "intents":[Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v155

    .line 1397
    .local v155, "resolvedTypes":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 1398
    .restart local v11    # "resultTo":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move/from16 v1, v82

    move-object/from16 v2, v116

    move-object/from16 v3, v155

    invoke-virtual {v0, v1, v2, v3, v11}, Landroid/app/ActivityManagerNative;->startActivitiesInPackage(I[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;)I

    move-result v156

    .line 1399
    .restart local v156    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1400
    move-object/from16 v0, p3

    move/from16 v1, v156

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1401
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1406
    .end local v11    # "resultTo":Landroid/os/IBinder;
    .end local v82    # "uid":I
    .end local v116    # "intents":[Landroid/content/Intent;
    .end local v155    # "resolvedTypes":[Ljava/lang/String;
    .end local v156    # "result":I
    :pswitch_135a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1407
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v95

    .line 1408
    .restart local v95    # "b":Landroid/os/IBinder;
    invoke-static/range {v95 .. v95}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 1409
    .local v6, "app":Landroid/app/IApplicationThread;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v116

    check-cast v116, [Landroid/content/Intent;

    .line 1410
    .restart local v116    # "intents":[Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v155

    .line 1411
    .restart local v155    # "resolvedTypes":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 1412
    .restart local v11    # "resultTo":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v116

    move-object/from16 v2, v155

    invoke-virtual {v0, v6, v1, v2, v11}, Landroid/app/ActivityManagerNative;->startActivities(Landroid/app/IApplicationThread;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;)I

    move-result v156

    .line 1413
    .restart local v156    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1414
    move-object/from16 v0, p3

    move/from16 v1, v156

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1415
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1420
    .end local v6    # "app":Landroid/app/IApplicationThread;
    .end local v11    # "resultTo":Landroid/os/IBinder;
    .end local v95    # "b":Landroid/os/IBinder;
    .end local v116    # "intents":[Landroid/content/Intent;
    .end local v155    # "resolvedTypes":[Ljava/lang/String;
    .end local v156    # "result":I
    :pswitch_1392
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1421
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getFrontActivityScreenCompatMode()I

    move-result v88

    .line 1422
    .restart local v88    # "mode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1423
    move-object/from16 v0, p3

    move/from16 v1, v88

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1424
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1429
    .end local v88    # "mode":I
    :pswitch_13aa
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1430
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v88

    .line 1431
    .restart local v88    # "mode":I
    move-object/from16 v0, p0

    move/from16 v1, v88

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setFrontActivityScreenCompatMode(I)V

    .line 1432
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1433
    move-object/from16 v0, p3

    move/from16 v1, v88

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1434
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1439
    .end local v88    # "mode":I
    :pswitch_13c9
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1440
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v143

    .line 1441
    .restart local v143    # "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v143

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageScreenCompatMode(Ljava/lang/String;)I

    move-result v88

    .line 1442
    .restart local v88    # "mode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1443
    move-object/from16 v0, p3

    move/from16 v1, v88

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1444
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1449
    .end local v88    # "mode":I
    .end local v143    # "pkg":Ljava/lang/String;
    :pswitch_13e9
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1450
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v143

    .line 1451
    .restart local v143    # "pkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v88

    .line 1452
    .restart local v88    # "mode":I
    move-object/from16 v0, p0

    move-object/from16 v1, v143

    move/from16 v2, v88

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setPackageScreenCompatMode(Ljava/lang/String;I)V

    .line 1453
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1454
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1458
    .end local v88    # "mode":I
    .end local v143    # "pkg":Ljava/lang/String;
    :pswitch_1407
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1459
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v168

    .line 1460
    .local v168, "userid":I
    move-object/from16 v0, p0

    move/from16 v1, v168

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->switchUser(I)Z

    move-result v156

    .line 1461
    .local v156, "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1462
    if-eqz v156, :cond_1428

    const/4 v5, 0x1

    :goto_1420
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1463
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1462
    :cond_1428
    const/4 v5, 0x0

    goto :goto_1420

    .line 1468
    .end local v156    # "result":Z
    .end local v168    # "userid":I
    :pswitch_142a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1469
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v166

    .line 1470
    .local v166, "taskId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v162

    .line 1471
    .local v162, "subTaskIndex":I
    move-object/from16 v0, p0

    move/from16 v1, v166

    move/from16 v2, v162

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->removeSubTask(II)Z

    move-result v156

    .line 1472
    .restart local v156    # "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1473
    if-eqz v156, :cond_1451

    const/4 v5, 0x1

    :goto_1449
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1474
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1473
    :cond_1451
    const/4 v5, 0x0

    goto :goto_1449

    .line 1479
    .end local v156    # "result":Z
    .end local v162    # "subTaskIndex":I
    .end local v166    # "taskId":I
    :pswitch_1453
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1480
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v166

    .line 1481
    .restart local v166    # "taskId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v60

    .line 1482
    .restart local v60    # "fl":I
    move-object/from16 v0, p0

    move/from16 v1, v166

    move/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->removeTask(II)Z

    move-result v156

    .line 1483
    .restart local v156    # "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1484
    if-eqz v156, :cond_147a

    const/4 v5, 0x1

    :goto_1472
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1485
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1484
    :cond_147a
    const/4 v5, 0x0

    goto :goto_1472

    .line 1489
    .end local v60    # "fl":I
    .end local v156    # "result":Z
    .end local v166    # "taskId":I
    :pswitch_147c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1490
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/IProcessObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IProcessObserver;

    move-result-object v136

    .line 1492
    .local v136, "observer":Landroid/app/IProcessObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    .line 1493
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1497
    .end local v136    # "observer":Landroid/app/IProcessObserver;
    :pswitch_1495
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1498
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/IProcessObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IProcessObserver;

    move-result-object v136

    .line 1500
    .restart local v136    # "observer":Landroid/app/IProcessObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V

    .line 1501
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1506
    .end local v136    # "observer":Landroid/app/IProcessObserver;
    :pswitch_14ae
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1507
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v143

    .line 1508
    .restart local v143    # "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v143

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageAskScreenCompat(Ljava/lang/String;)Z

    move-result v94

    .line 1509
    .local v94, "ask":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1510
    if-eqz v94, :cond_14cf

    const/4 v5, 0x1

    :goto_14c7
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1511
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1510
    :cond_14cf
    const/4 v5, 0x0

    goto :goto_14c7

    .line 1516
    .end local v94    # "ask":Z
    .end local v143    # "pkg":Ljava/lang/String;
    :pswitch_14d1
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1517
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v143

    .line 1518
    .restart local v143    # "pkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_14f3

    const/16 v94, 0x1

    .line 1519
    .restart local v94    # "ask":Z
    :goto_14e4
    move-object/from16 v0, p0

    move-object/from16 v1, v143

    move/from16 v2, v94

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setPackageAskScreenCompat(Ljava/lang/String;Z)V

    .line 1520
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1521
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1518
    .end local v94    # "ask":Z
    :cond_14f3
    const/16 v94, 0x0

    goto :goto_14e4

    .line 1525
    .end local v143    # "pkg":Ljava/lang/String;
    :pswitch_14f6
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1526
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v148

    .line 1528
    .restart local v148    # "r":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v148

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isIntentSenderTargetedToPackage(Landroid/content/IIntentSender;)Z

    move-result v154

    .line 1529
    .restart local v154    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1530
    if-eqz v154, :cond_151b

    const/4 v5, 0x1

    :goto_1513
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1531
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1530
    :cond_151b
    const/4 v5, 0x0

    goto :goto_1513

    .line 1535
    .end local v148    # "r":Landroid/content/IIntentSender;
    .end local v154    # "res":Z
    :pswitch_151d
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1536
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/content/res/Configuration;

    .line 1537
    .local v30, "config":Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V

    .line 1538
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1539
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1543
    .end local v30    # "config":Landroid/content/res/Configuration;
    :pswitch_153b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1544
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v142

    .line 1545
    .restart local v142    # "pids":[I
    move-object/from16 v0, p0

    move-object/from16 v1, v142

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getProcessPss([I)[J

    move-result-object v147

    .line 1546
    .local v147, "pss":[J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1547
    move-object/from16 v0, p3

    move-object/from16 v1, v147

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 1548
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1552
    .end local v142    # "pids":[I
    .end local v147    # "pss":[J
    :pswitch_155b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1553
    sget-object v5, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v133

    check-cast v133, Ljava/lang/CharSequence;

    .line 1554
    .local v133, "msg":Ljava/lang/CharSequence;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1583

    const/16 v92, 0x1

    .line 1555
    .local v92, "always":Z
    :goto_1574
    move-object/from16 v0, p0

    move-object/from16 v1, v133

    move/from16 v2, v92

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->showBootMessage(Ljava/lang/CharSequence;Z)V

    .line 1556
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1557
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1554
    .end local v92    # "always":Z
    :cond_1583
    const/16 v92, 0x0

    goto :goto_1574

    .line 1561
    .end local v133    # "msg":Ljava/lang/CharSequence;
    :pswitch_1586
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1562
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->dismissKeyguardOnNextActivity()V

    .line 1563
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1564
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 112
    :pswitch_data_1596
    .packed-switch 0x1
        :pswitch_e00
        :pswitch_e2a
        :pswitch_8
        :pswitch_cd0
        :pswitch_ce0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_201
        :pswitch_281
        :pswitch_2d6
        :pswitch_2f7
        :pswitch_367
        :pswitch_38f
        :pswitch_3be
        :pswitch_3da
        :pswitch_415
        :pswitch_42d
        :pswitch_49e
        :pswitch_4c3
        :pswitch_4e3
        :pswitch_628
        :pswitch_646
        :pswitch_68e
        :pswitch_6a6
        :pswitch_6f6
        :pswitch_731
        :pswitch_769
        :pswitch_3
        :pswitch_23e
        :pswitch_7ad
        :pswitch_7d3
        :pswitch_805
        :pswitch_8a1
        :pswitch_8e7
        :pswitch_90e
        :pswitch_6d8
        :pswitch_d14
        :pswitch_d24
        :pswitch_d34
        :pswitch_d66
        :pswitch_98f
        :pswitch_9ca
        :pswitch_9f0
        :pswitch_a09
        :pswitch_837
        :pswitch_a65
        :pswitch_a85
        :pswitch_b3e
        :pswitch_b56
        :pswitch_b99
        :pswitch_bc5
        :pswitch_c2a
        :pswitch_c5c
        :pswitch_d85
        :pswitch_c88
        :pswitch_ea4
        :pswitch_53e
        :pswitch_965
        :pswitch_486
        :pswitch_aa3
        :pswitch_afe
        :pswitch_b1a
        :pswitch_d9e
        :pswitch_1d4
        :pswitch_dae
        :pswitch_78d
        :pswitch_a27
        :pswitch_a45
        :pswitch_936
        :pswitch_b6e
        :pswitch_866
        :pswitch_65e
        :pswitch_caf
        :pswitch_5e0
        :pswitch_bfd
        :pswitch_ee4
        :pswitch_dca
        :pswitch_594
        :pswitch_564
        :pswitch_5f8
        :pswitch_efc
        :pswitch_f97
        :pswitch_f15
        :pswitch_f56
        :pswitch_f77
        :pswitch_f87
        :pswitch_fc1
        :pswitch_ff0
        :pswitch_100e
        :pswitch_102c
        :pswitch_1045
        :pswitch_105e
        :pswitch_10ab
        :pswitch_10c9
        :pswitch_10e1
        :pswitch_1102
        :pswitch_172
        :pswitch_1120
        :pswitch_e4b
        :pswitch_ebc
        :pswitch_114a
        :pswitch_7f
        :pswitch_25e
        :pswitch_f8
        :pswitch_610
        :pswitch_1165
        :pswitch_e7d
        :pswitch_1175
        :pswitch_1198
        :pswitch_11c1
        :pswitch_11dc
        :pswitch_1206
        :pswitch_122c
        :pswitch_124c
        :pswitch_1278
        :pswitch_12a7
        :pswitch_12df
        :pswitch_135a
        :pswitch_1324
        :pswitch_46e
        :pswitch_1392
        :pswitch_13aa
        :pswitch_13c9
        :pswitch_13e9
        :pswitch_14ae
        :pswitch_14d1
        :pswitch_1407
        :pswitch_142a
        :pswitch_1453
        :pswitch_147c
        :pswitch_1495
        :pswitch_14f6
        :pswitch_151d
        :pswitch_153b
        :pswitch_155b
        :pswitch_1586
        :pswitch_ed4
    .end packed-switch
.end method
