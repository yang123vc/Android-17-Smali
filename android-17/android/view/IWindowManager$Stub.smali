.class public abstract Landroid/view/IWindowManager$Stub;
.super Landroid/os/Binder;
.source "IWindowManager.java"

# interfaces
.implements Landroid/view/IWindowManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IWindowManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.view.IWindowManager"

.field static final TRANSACTION_addAppToken:I = 0x15

.field static final TRANSACTION_addWindowToken:I = 0x13

.field static final TRANSACTION_canStatusBarHide:I = 0xb

.field static final TRANSACTION_clearForcedDisplaySize:I = 0xa

.field static final TRANSACTION_closeSystemDialogs:I = 0x30

.field static final TRANSACTION_disableKeyguard:I = 0x29

.field static final TRANSACTION_dismissKeyguard:I = 0x2f

.field static final TRANSACTION_executeAppTransition:I = 0x1d

.field static final TRANSACTION_exitKeyguardSecurely:I = 0x2b

.field static final TRANSACTION_freezeRotation:I = 0x4a

.field static final TRANSACTION_getAnimationScale:I = 0x31

.field static final TRANSACTION_getAnimationScales:I = 0x32

.field static final TRANSACTION_getAppOrientation:I = 0x18

.field static final TRANSACTION_getDPadKeycodeState:I = 0x3e

.field static final TRANSACTION_getDPadScancodeState:I = 0x3a

.field static final TRANSACTION_getDisplaySize:I = 0x6

.field static final TRANSACTION_getInputDevice:I = 0x41

.field static final TRANSACTION_getInputDeviceIds:I = 0x42

.field static final TRANSACTION_getKeycodeState:I = 0x3b

.field static final TRANSACTION_getKeycodeStateForDevice:I = 0x3c

.field static final TRANSACTION_getMaximumSizeDimension:I = 0x8

.field static final TRANSACTION_getPendingAppTransition:I = 0x1b

.field static final TRANSACTION_getPreferredOptionsPanelGravity:I = 0x49

.field static final TRANSACTION_getRealDisplaySize:I = 0x7

.field static final TRANSACTION_getRotation:I = 0x47

.field static final TRANSACTION_getScancodeState:I = 0x37

.field static final TRANSACTION_getScancodeStateForDevice:I = 0x38

.field static final TRANSACTION_getSwitchState:I = 0x35

.field static final TRANSACTION_getSwitchStateForDevice:I = 0x36

.field static final TRANSACTION_getTrackballKeycodeState:I = 0x3d

.field static final TRANSACTION_getTrackballScancodeState:I = 0x39

.field static final TRANSACTION_hasKeys:I = 0x40

.field static final TRANSACTION_hasNavigationBar:I = 0x50

.field static final TRANSACTION_inKeyguardRestrictedInputMode:I = 0x2e

.field static final TRANSACTION_injectInputEventNoWait:I = 0xf

.field static final TRANSACTION_injectKeyEvent:I = 0xc

.field static final TRANSACTION_injectPointerEvent:I = 0xd

.field static final TRANSACTION_injectTrackballEvent:I = 0xe

.field static final TRANSACTION_inputMethodClientHasFocus:I = 0x5

.field static final TRANSACTION_isKeyguardLocked:I = 0x2c

.field static final TRANSACTION_isKeyguardSecure:I = 0x2d

.field static final TRANSACTION_isViewServerRunning:I = 0x3

.field static final TRANSACTION_lockNow:I = 0x51

.field static final TRANSACTION_monitorInput:I = 0x3f

.field static final TRANSACTION_moveAppToken:I = 0x24

.field static final TRANSACTION_moveAppTokensToBottom:I = 0x26

.field static final TRANSACTION_moveAppTokensToTop:I = 0x25

.field static final TRANSACTION_openSession:I = 0x4

.field static final TRANSACTION_overridePendingAppTransition:I = 0x1c

.field static final TRANSACTION_pauseKeyDispatching:I = 0x10

.field static final TRANSACTION_prepareAppTransition:I = 0x1a

.field static final TRANSACTION_reenableKeyguard:I = 0x2a

.field static final TRANSACTION_removeAppToken:I = 0x23

.field static final TRANSACTION_removeWindowToken:I = 0x14

.field static final TRANSACTION_resumeKeyDispatching:I = 0x11

.field static final TRANSACTION_screenshotApplications:I = 0x4c

.field static final TRANSACTION_setAnimationScale:I = 0x33

.field static final TRANSACTION_setAnimationScales:I = 0x34

.field static final TRANSACTION_setAppGroupId:I = 0x16

.field static final TRANSACTION_setAppOrientation:I = 0x17

.field static final TRANSACTION_setAppStartingWindow:I = 0x1e

.field static final TRANSACTION_setAppVisibility:I = 0x20

.field static final TRANSACTION_setAppWillBeHidden:I = 0x1f

.field static final TRANSACTION_setEventDispatching:I = 0x12

.field static final TRANSACTION_setFocusedApp:I = 0x19

.field static final TRANSACTION_setForcedDisplaySize:I = 0x9

.field static final TRANSACTION_setInTouchMode:I = 0x43

.field static final TRANSACTION_setNewConfiguration:I = 0x28

.field static final TRANSACTION_setPointerSpeed:I = 0x4e

.field static final TRANSACTION_setStrictModeVisualIndicatorPreference:I = 0x45

.field static final TRANSACTION_showStrictModeViolation:I = 0x44

.field static final TRANSACTION_startAppFreezingScreen:I = 0x21

.field static final TRANSACTION_startViewServer:I = 0x1

.field static final TRANSACTION_statusBarVisibilityChanged:I = 0x4d

.field static final TRANSACTION_stopAppFreezingScreen:I = 0x22

.field static final TRANSACTION_stopViewServer:I = 0x2

.field static final TRANSACTION_thawRotation:I = 0x4b

.field static final TRANSACTION_updateOrientationFromAppTokens:I = 0x27

.field static final TRANSACTION_updateRotation:I = 0x46

.field static final TRANSACTION_waitForWindowDrawn:I = 0x4f

.field static final TRANSACTION_watchRotation:I = 0x48


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p0, p0, v0}, Landroid/view/IWindowManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 28
    if-nez p0, :cond_4

    .line 29
    const/4 v0, 0x0

    .line 35
    :goto_3
    return-object v0

    .line 31
    :cond_4
    const-string v1, "android.view.IWindowManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/view/IWindowManager;

    if-eqz v1, :cond_13

    .line 33
    check-cast v0, Landroid/view/IWindowManager;

    goto :goto_3

    .line 35
    :cond_13
    new-instance v0, Landroid/view/IWindowManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/view/IWindowManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 19
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
    .line 43
    sparse-switch p1, :sswitch_data_930

    .line 939
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_7
    return v1

    .line 47
    :sswitch_8
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    const/4 v1, 0x1

    goto :goto_7

    .line 52
    :sswitch_11
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 55
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->startViewServer(I)Z

    move-result v13

    .line 56
    .local v13, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    if-eqz v13, :cond_2d

    const/4 v1, 0x1

    :goto_26
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    const/4 v1, 0x1

    goto :goto_7

    .line 57
    :cond_2d
    const/4 v1, 0x0

    goto :goto_26

    .line 62
    .end local v2    # "_arg0":I
    .end local v13    # "_result":Z
    :sswitch_2f
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->stopViewServer()Z

    move-result v13

    .line 64
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    if-eqz v13, :cond_47

    const/4 v1, 0x1

    :goto_40
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    const/4 v1, 0x1

    goto :goto_7

    .line 65
    :cond_47
    const/4 v1, 0x0

    goto :goto_40

    .line 70
    .end local v13    # "_result":Z
    :sswitch_49
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->isViewServerRunning()Z

    move-result v13

    .line 72
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    if-eqz v13, :cond_61

    const/4 v1, 0x1

    :goto_5a
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    const/4 v1, 0x1

    goto :goto_7

    .line 73
    :cond_61
    const/4 v1, 0x0

    goto :goto_5a

    .line 78
    .end local v13    # "_result":Z
    :sswitch_63
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    move-result-object v2

    .line 82
    .local v2, "_arg0":Lcom/android/internal/view/IInputMethodClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/view/IInputContext$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContext;

    move-result-object v3

    .line 83
    .local v3, "_arg1":Lcom/android/internal/view/IInputContext;
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->openSession(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;)Landroid/view/IWindowSession;

    move-result-object v13

    .line 84
    .local v13, "_result":Landroid/view/IWindowSession;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    if-eqz v13, :cond_8f

    invoke-interface {v13}, Landroid/view/IWindowSession;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_87
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 86
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 85
    :cond_8f
    const/4 v1, 0x0

    goto :goto_87

    .line 90
    .end local v2    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    .end local v3    # "_arg1":Lcom/android/internal/view/IInputContext;
    .end local v13    # "_result":Landroid/view/IWindowSession;
    :sswitch_91
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    move-result-object v2

    .line 93
    .restart local v2    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->inputMethodClientHasFocus(Lcom/android/internal/view/IInputMethodClient;)Z

    move-result v13

    .line 94
    .local v13, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    if-eqz v13, :cond_b2

    const/4 v1, 0x1

    :goto_aa
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 95
    :cond_b2
    const/4 v1, 0x0

    goto :goto_aa

    .line 100
    .end local v2    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    .end local v13    # "_result":Z
    :sswitch_b4
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 103
    .local v2, "_arg0":Landroid/graphics/Point;
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->getDisplaySize(Landroid/graphics/Point;)V

    .line 104
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    if-eqz v2, :cond_d7

    .line 106
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Point;->writeToParcel(Landroid/os/Parcel;I)V

    .line 112
    :goto_d4
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 110
    :cond_d7
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_d4

    .line 116
    .end local v2    # "_arg0":Landroid/graphics/Point;
    :sswitch_de
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 119
    .restart local v2    # "_arg0":Landroid/graphics/Point;
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->getRealDisplaySize(Landroid/graphics/Point;)V

    .line 120
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    if-eqz v2, :cond_101

    .line 122
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Point;->writeToParcel(Landroid/os/Parcel;I)V

    .line 128
    :goto_fe
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 126
    :cond_101
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_fe

    .line 132
    .end local v2    # "_arg0":Landroid/graphics/Point;
    :sswitch_108
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->getMaximumSizeDimension()I

    move-result v13

    .line 134
    .local v13, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 140
    .end local v13    # "_result":I
    :sswitch_11e
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 144
    .local v2, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 145
    .local v3, "_arg1":I
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->setForcedDisplaySize(II)V

    .line 146
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 151
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :sswitch_136
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->clearForcedDisplaySize()V

    .line 153
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 158
    :sswitch_146
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->canStatusBarHide()Z

    move-result v13

    .line 160
    .local v13, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    if-eqz v13, :cond_15f

    const/4 v1, 0x1

    :goto_157
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 161
    :cond_15f
    const/4 v1, 0x0

    goto :goto_157

    .line 166
    .end local v13    # "_result":Z
    :sswitch_161
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_191

    .line 169
    sget-object v1, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/KeyEvent;

    .line 175
    .local v2, "_arg0":Landroid/view/KeyEvent;
    :goto_178
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_193

    const/4 v3, 0x1

    .line 176
    .local v3, "_arg1":Z
    :goto_17f
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->injectKeyEvent(Landroid/view/KeyEvent;Z)Z

    move-result v13

    .line 177
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    if-eqz v13, :cond_195

    const/4 v1, 0x1

    :goto_189
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 179
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 172
    .end local v2    # "_arg0":Landroid/view/KeyEvent;
    .end local v3    # "_arg1":Z
    .end local v13    # "_result":Z
    :cond_191
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/view/KeyEvent;
    goto :goto_178

    .line 175
    :cond_193
    const/4 v3, 0x0

    goto :goto_17f

    .line 178
    .restart local v3    # "_arg1":Z
    .restart local v13    # "_result":Z
    :cond_195
    const/4 v1, 0x0

    goto :goto_189

    .line 183
    .end local v2    # "_arg0":Landroid/view/KeyEvent;
    .end local v3    # "_arg1":Z
    .end local v13    # "_result":Z
    :sswitch_197
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1c7

    .line 186
    sget-object v1, Landroid/view/MotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MotionEvent;

    .line 192
    .local v2, "_arg0":Landroid/view/MotionEvent;
    :goto_1ae
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1c9

    const/4 v3, 0x1

    .line 193
    .restart local v3    # "_arg1":Z
    :goto_1b5
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->injectPointerEvent(Landroid/view/MotionEvent;Z)Z

    move-result v13

    .line 194
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    if-eqz v13, :cond_1cb

    const/4 v1, 0x1

    :goto_1bf
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 189
    .end local v2    # "_arg0":Landroid/view/MotionEvent;
    .end local v3    # "_arg1":Z
    .end local v13    # "_result":Z
    :cond_1c7
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/view/MotionEvent;
    goto :goto_1ae

    .line 192
    :cond_1c9
    const/4 v3, 0x0

    goto :goto_1b5

    .line 195
    .restart local v3    # "_arg1":Z
    .restart local v13    # "_result":Z
    :cond_1cb
    const/4 v1, 0x0

    goto :goto_1bf

    .line 200
    .end local v2    # "_arg0":Landroid/view/MotionEvent;
    .end local v3    # "_arg1":Z
    .end local v13    # "_result":Z
    :sswitch_1cd
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1fd

    .line 203
    sget-object v1, Landroid/view/MotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MotionEvent;

    .line 209
    .restart local v2    # "_arg0":Landroid/view/MotionEvent;
    :goto_1e4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1ff

    const/4 v3, 0x1

    .line 210
    .restart local v3    # "_arg1":Z
    :goto_1eb
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->injectTrackballEvent(Landroid/view/MotionEvent;Z)Z

    move-result v13

    .line 211
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    if-eqz v13, :cond_201

    const/4 v1, 0x1

    :goto_1f5
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 213
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 206
    .end local v2    # "_arg0":Landroid/view/MotionEvent;
    .end local v3    # "_arg1":Z
    .end local v13    # "_result":Z
    :cond_1fd
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/view/MotionEvent;
    goto :goto_1e4

    .line 209
    :cond_1ff
    const/4 v3, 0x0

    goto :goto_1eb

    .line 212
    .restart local v3    # "_arg1":Z
    .restart local v13    # "_result":Z
    :cond_201
    const/4 v1, 0x0

    goto :goto_1f5

    .line 217
    .end local v2    # "_arg0":Landroid/view/MotionEvent;
    .end local v3    # "_arg1":Z
    .end local v13    # "_result":Z
    :sswitch_203
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 219
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_22c

    .line 220
    sget-object v1, Landroid/view/InputEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InputEvent;

    .line 225
    .local v2, "_arg0":Landroid/view/InputEvent;
    :goto_21a
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->injectInputEventNoWait(Landroid/view/InputEvent;)Z

    move-result v13

    .line 226
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 227
    if-eqz v13, :cond_22e

    const/4 v1, 0x1

    :goto_224
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 228
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 223
    .end local v2    # "_arg0":Landroid/view/InputEvent;
    .end local v13    # "_result":Z
    :cond_22c
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/view/InputEvent;
    goto :goto_21a

    .line 227
    .restart local v13    # "_result":Z
    :cond_22e
    const/4 v1, 0x0

    goto :goto_224

    .line 232
    .end local v2    # "_arg0":Landroid/view/InputEvent;
    .end local v13    # "_result":Z
    :sswitch_230
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 235
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->pauseKeyDispatching(Landroid/os/IBinder;)V

    .line 236
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 241
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :sswitch_244
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 243
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 244
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->resumeKeyDispatching(Landroid/os/IBinder;)V

    .line 245
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 246
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 250
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :sswitch_258
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 252
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_26f

    const/4 v2, 0x1

    .line 253
    .local v2, "_arg0":Z
    :goto_266
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setEventDispatching(Z)V

    .line 254
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 255
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 252
    .end local v2    # "_arg0":Z
    :cond_26f
    const/4 v2, 0x0

    goto :goto_266

    .line 259
    :sswitch_271
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 263
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 264
    .local v3, "_arg1":I
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->addWindowToken(Landroid/os/IBinder;I)V

    .line 265
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 270
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":I
    :sswitch_289
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 272
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 273
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->removeWindowToken(Landroid/os/IBinder;)V

    .line 274
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 275
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 279
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :sswitch_29d
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 281
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 283
    .local v2, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IApplicationToken$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IApplicationToken;

    move-result-object v3

    .line 285
    .local v3, "_arg1":Landroid/view/IApplicationToken;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 287
    .local v4, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 289
    .local v5, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2c9

    const/4 v6, 0x1

    .local v6, "_arg4":Z
    :goto_2bf
    move-object v1, p0

    .line 290
    invoke-virtual/range {v1 .. v6}, Landroid/view/IWindowManager$Stub;->addAppToken(ILandroid/view/IApplicationToken;IIZ)V

    .line 291
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 292
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 289
    .end local v6    # "_arg4":Z
    :cond_2c9
    const/4 v6, 0x0

    goto :goto_2bf

    .line 296
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/view/IApplicationToken;
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    :sswitch_2cb
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 298
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 300
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 301
    .local v3, "_arg1":I
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->setAppGroupId(Landroid/os/IBinder;I)V

    .line 302
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 303
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 307
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":I
    :sswitch_2e3
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 309
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IApplicationToken$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IApplicationToken;

    move-result-object v2

    .line 311
    .local v2, "_arg0":Landroid/view/IApplicationToken;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 312
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->setAppOrientation(Landroid/view/IApplicationToken;I)V

    .line 313
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 314
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 318
    .end local v2    # "_arg0":Landroid/view/IApplicationToken;
    .end local v3    # "_arg1":I
    :sswitch_2ff
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 320
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IApplicationToken$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IApplicationToken;

    move-result-object v2

    .line 321
    .restart local v2    # "_arg0":Landroid/view/IApplicationToken;
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->getAppOrientation(Landroid/view/IApplicationToken;)I

    move-result v13

    .line 322
    .local v13, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 323
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 324
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 328
    .end local v2    # "_arg0":Landroid/view/IApplicationToken;
    .end local v13    # "_result":I
    :sswitch_31d
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 330
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 332
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_338

    const/4 v3, 0x1

    .line 333
    .local v3, "_arg1":Z
    :goto_32f
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->setFocusedApp(Landroid/os/IBinder;Z)V

    .line 334
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 335
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 332
    .end local v3    # "_arg1":Z
    :cond_338
    const/4 v3, 0x0

    goto :goto_32f

    .line 339
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :sswitch_33a
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 341
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 343
    .local v2, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_355

    const/4 v3, 0x1

    .line 344
    .restart local v3    # "_arg1":Z
    :goto_34c
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->prepareAppTransition(IZ)V

    .line 345
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 346
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 343
    .end local v3    # "_arg1":Z
    :cond_355
    const/4 v3, 0x0

    goto :goto_34c

    .line 350
    .end local v2    # "_arg0":I
    :sswitch_357
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 351
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->getPendingAppTransition()I

    move-result v13

    .line 352
    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 353
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 354
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 358
    .end local v13    # "_result":I
    :sswitch_36d
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 360
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 362
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 364
    .local v3, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 365
    .restart local v4    # "_arg2":I
    invoke-virtual {p0, v2, v3, v4}, Landroid/view/IWindowManager$Stub;->overridePendingAppTransition(Ljava/lang/String;II)V

    .line 366
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 367
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 371
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :sswitch_389
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 372
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->executeAppTransition()V

    .line 373
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 374
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 378
    :sswitch_399
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 380
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 382
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 384
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 386
    .restart local v4    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3ed

    .line 387
    sget-object v1, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/res/CompatibilityInfo;

    .line 393
    .local v5, "_arg3":Landroid/content/res/CompatibilityInfo;
    :goto_3bc
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3ef

    .line 394
    sget-object v1, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    .line 400
    .local v6, "_arg4":Ljava/lang/CharSequence;
    :goto_3cc
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 402
    .local v7, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 404
    .local v8, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 406
    .local v9, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    .line 408
    .local v10, "_arg8":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3f1

    const/4 v11, 0x1

    .local v11, "_arg9":Z
    :goto_3e3
    move-object v1, p0

    .line 409
    invoke-virtual/range {v1 .. v11}, Landroid/view/IWindowManager$Stub;->setAppStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIILandroid/os/IBinder;Z)V

    .line 410
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 411
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 390
    .end local v5    # "_arg3":Landroid/content/res/CompatibilityInfo;
    .end local v6    # "_arg4":Ljava/lang/CharSequence;
    .end local v7    # "_arg5":I
    .end local v8    # "_arg6":I
    .end local v9    # "_arg7":I
    .end local v10    # "_arg8":Landroid/os/IBinder;
    .end local v11    # "_arg9":Z
    :cond_3ed
    const/4 v5, 0x0

    .restart local v5    # "_arg3":Landroid/content/res/CompatibilityInfo;
    goto :goto_3bc

    .line 397
    :cond_3ef
    const/4 v6, 0x0

    .restart local v6    # "_arg4":Ljava/lang/CharSequence;
    goto :goto_3cc

    .line 408
    .restart local v7    # "_arg5":I
    .restart local v8    # "_arg6":I
    .restart local v9    # "_arg7":I
    .restart local v10    # "_arg8":Landroid/os/IBinder;
    :cond_3f1
    const/4 v11, 0x0

    goto :goto_3e3

    .line 415
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Landroid/content/res/CompatibilityInfo;
    .end local v6    # "_arg4":Ljava/lang/CharSequence;
    .end local v7    # "_arg5":I
    .end local v8    # "_arg6":I
    .end local v9    # "_arg7":I
    .end local v10    # "_arg8":Landroid/os/IBinder;
    :sswitch_3f3
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 417
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 418
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setAppWillBeHidden(Landroid/os/IBinder;)V

    .line 419
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 420
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 424
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :sswitch_407
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 426
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 428
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_422

    const/4 v3, 0x1

    .line 429
    .local v3, "_arg1":Z
    :goto_419
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 430
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 431
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 428
    .end local v3    # "_arg1":Z
    :cond_422
    const/4 v3, 0x0

    goto :goto_419

    .line 435
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :sswitch_424
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 437
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 439
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 440
    .local v3, "_arg1":I
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->startAppFreezingScreen(Landroid/os/IBinder;I)V

    .line 441
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 442
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 446
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":I
    :sswitch_43c
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 448
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 450
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_457

    const/4 v3, 0x1

    .line 451
    .local v3, "_arg1":Z
    :goto_44e
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->stopAppFreezingScreen(Landroid/os/IBinder;Z)V

    .line 452
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 453
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 450
    .end local v3    # "_arg1":Z
    :cond_457
    const/4 v3, 0x0

    goto :goto_44e

    .line 457
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :sswitch_459
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 459
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 460
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->removeAppToken(Landroid/os/IBinder;)V

    .line 461
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 462
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 466
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :sswitch_46d
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 468
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 470
    .local v2, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 471
    .local v3, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->moveAppToken(ILandroid/os/IBinder;)V

    .line 472
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 473
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 477
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/os/IBinder;
    :sswitch_485
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 479
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createBinderArrayList()Ljava/util/ArrayList;

    move-result-object v12

    .line 480
    .local v12, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-virtual {p0, v12}, Landroid/view/IWindowManager$Stub;->moveAppTokensToTop(Ljava/util/List;)V

    .line 481
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 482
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 486
    .end local v12    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :sswitch_499
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 488
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createBinderArrayList()Ljava/util/ArrayList;

    move-result-object v12

    .line 489
    .restart local v12    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-virtual {p0, v12}, Landroid/view/IWindowManager$Stub;->moveAppTokensToBottom(Ljava/util/List;)V

    .line 490
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 491
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 495
    .end local v12    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :sswitch_4ad
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 497
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4e0

    .line 498
    sget-object v1, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/Configuration;

    .line 504
    .local v2, "_arg0":Landroid/content/res/Configuration;
    :goto_4c4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 505
    .restart local v3    # "_arg1":Landroid/os/IBinder;
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->updateOrientationFromAppTokens(Landroid/content/res/Configuration;Landroid/os/IBinder;)Landroid/content/res/Configuration;

    move-result-object v13

    .line 506
    .local v13, "_result":Landroid/content/res/Configuration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 507
    if-eqz v13, :cond_4e2

    .line 508
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 509
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v13, v0, v1}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 514
    :goto_4dd
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 501
    .end local v2    # "_arg0":Landroid/content/res/Configuration;
    .end local v3    # "_arg1":Landroid/os/IBinder;
    .end local v13    # "_result":Landroid/content/res/Configuration;
    :cond_4e0
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/content/res/Configuration;
    goto :goto_4c4

    .line 512
    .restart local v3    # "_arg1":Landroid/os/IBinder;
    .restart local v13    # "_result":Landroid/content/res/Configuration;
    :cond_4e2
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4dd

    .line 518
    .end local v2    # "_arg0":Landroid/content/res/Configuration;
    .end local v3    # "_arg1":Landroid/os/IBinder;
    .end local v13    # "_result":Landroid/content/res/Configuration;
    :sswitch_4e9
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 520
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_509

    .line 521
    sget-object v1, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/Configuration;

    .line 526
    .restart local v2    # "_arg0":Landroid/content/res/Configuration;
    :goto_500
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setNewConfiguration(Landroid/content/res/Configuration;)V

    .line 527
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 528
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 524
    .end local v2    # "_arg0":Landroid/content/res/Configuration;
    :cond_509
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/content/res/Configuration;
    goto :goto_500

    .line 532
    .end local v2    # "_arg0":Landroid/content/res/Configuration;
    :sswitch_50b
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 534
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 536
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 537
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->disableKeyguard(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 538
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 539
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 543
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Ljava/lang/String;
    :sswitch_523
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 545
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 546
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->reenableKeyguard(Landroid/os/IBinder;)V

    .line 547
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 548
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 552
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :sswitch_537
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 554
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IOnKeyguardExitResult$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IOnKeyguardExitResult;

    move-result-object v2

    .line 555
    .local v2, "_arg0":Landroid/view/IOnKeyguardExitResult;
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->exitKeyguardSecurely(Landroid/view/IOnKeyguardExitResult;)V

    .line 556
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 557
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 561
    .end local v2    # "_arg0":Landroid/view/IOnKeyguardExitResult;
    :sswitch_54f
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 562
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->isKeyguardLocked()Z

    move-result v13

    .line 563
    .local v13, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 564
    if-eqz v13, :cond_568

    const/4 v1, 0x1

    :goto_560
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 565
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 564
    :cond_568
    const/4 v1, 0x0

    goto :goto_560

    .line 569
    .end local v13    # "_result":Z
    :sswitch_56a
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 570
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->isKeyguardSecure()Z

    move-result v13

    .line 571
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 572
    if-eqz v13, :cond_583

    const/4 v1, 0x1

    :goto_57b
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 573
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 572
    :cond_583
    const/4 v1, 0x0

    goto :goto_57b

    .line 577
    .end local v13    # "_result":Z
    :sswitch_585
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 578
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->inKeyguardRestrictedInputMode()Z

    move-result v13

    .line 579
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 580
    if-eqz v13, :cond_59e

    const/4 v1, 0x1

    :goto_596
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 581
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 580
    :cond_59e
    const/4 v1, 0x0

    goto :goto_596

    .line 585
    .end local v13    # "_result":Z
    :sswitch_5a0
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 586
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->dismissKeyguard()V

    .line 587
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 588
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 592
    :sswitch_5b0
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 594
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 595
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->closeSystemDialogs(Ljava/lang/String;)V

    .line 596
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 597
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 601
    .end local v2    # "_arg0":Ljava/lang/String;
    :sswitch_5c4
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 603
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 604
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->getAnimationScale(I)F

    move-result v13

    .line 605
    .local v13, "_result":F
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 606
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeFloat(F)V

    .line 607
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 611
    .end local v2    # "_arg0":I
    .end local v13    # "_result":F
    :sswitch_5de
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 612
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->getAnimationScales()[F

    move-result-object v13

    .line 613
    .local v13, "_result":[F
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 614
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 615
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 619
    .end local v13    # "_result":[F
    :sswitch_5f4
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 621
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 623
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    .line 624
    .local v3, "_arg1":F
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->setAnimationScale(IF)V

    .line 625
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 626
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 630
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":F
    :sswitch_60c
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 632
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v2

    .line 633
    .local v2, "_arg0":[F
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setAnimationScales([F)V

    .line 634
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 635
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 639
    .end local v2    # "_arg0":[F
    :sswitch_620
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 641
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 642
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->getSwitchState(I)I

    move-result v13

    .line 643
    .local v13, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 644
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 645
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 649
    .end local v2    # "_arg0":I
    .end local v13    # "_result":I
    :sswitch_63a
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 651
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 653
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 654
    .local v3, "_arg1":I
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->getSwitchStateForDevice(II)I

    move-result v13

    .line 655
    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 656
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 657
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 661
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v13    # "_result":I
    :sswitch_658
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 663
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 664
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->getScancodeState(I)I

    move-result v13

    .line 665
    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 666
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 667
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 671
    .end local v2    # "_arg0":I
    .end local v13    # "_result":I
    :sswitch_672
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 673
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 675
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 676
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->getScancodeStateForDevice(II)I

    move-result v13

    .line 677
    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 678
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 679
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 683
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v13    # "_result":I
    :sswitch_690
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 685
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 686
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->getTrackballScancodeState(I)I

    move-result v13

    .line 687
    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 688
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 689
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 693
    .end local v2    # "_arg0":I
    .end local v13    # "_result":I
    :sswitch_6aa
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 695
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 696
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->getDPadScancodeState(I)I

    move-result v13

    .line 697
    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 698
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 699
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 703
    .end local v2    # "_arg0":I
    .end local v13    # "_result":I
    :sswitch_6c4
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 705
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 706
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->getKeycodeState(I)I

    move-result v13

    .line 707
    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 708
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 709
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 713
    .end local v2    # "_arg0":I
    .end local v13    # "_result":I
    :sswitch_6de
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 715
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 717
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 718
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->getKeycodeStateForDevice(II)I

    move-result v13

    .line 719
    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 720
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 721
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 725
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v13    # "_result":I
    :sswitch_6fc
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 727
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 728
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->getTrackballKeycodeState(I)I

    move-result v13

    .line 729
    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 730
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 731
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 735
    .end local v2    # "_arg0":I
    .end local v13    # "_result":I
    :sswitch_716
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 737
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 738
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->getDPadKeycodeState(I)I

    move-result v13

    .line 739
    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 740
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 741
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 745
    .end local v2    # "_arg0":I
    .end local v13    # "_result":I
    :sswitch_730
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 747
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 748
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->monitorInput(Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object v13

    .line 749
    .local v13, "_result":Landroid/view/InputChannel;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 750
    if-eqz v13, :cond_753

    .line 751
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 752
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v13, v0, v1}, Landroid/view/InputChannel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 757
    :goto_750
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 755
    :cond_753
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_750

    .line 761
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v13    # "_result":Landroid/view/InputChannel;
    :sswitch_75a
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 763
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 765
    .local v2, "_arg0":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v3

    .line 766
    .local v3, "_arg1":[Z
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->hasKeys([I[Z)Z

    move-result v13

    .line 767
    .local v13, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 768
    if-eqz v13, :cond_780

    const/4 v1, 0x1

    :goto_773
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 769
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 770
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 768
    :cond_780
    const/4 v1, 0x0

    goto :goto_773

    .line 774
    .end local v2    # "_arg0":[I
    .end local v3    # "_arg1":[Z
    .end local v13    # "_result":Z
    :sswitch_782
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 776
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 777
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v13

    .line 778
    .local v13, "_result":Landroid/view/InputDevice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 779
    if-eqz v13, :cond_7a5

    .line 780
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 781
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v13, v0, v1}, Landroid/view/InputDevice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 786
    :goto_7a2
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 784
    :cond_7a5
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7a2

    .line 790
    .end local v2    # "_arg0":I
    .end local v13    # "_result":Landroid/view/InputDevice;
    :sswitch_7ac
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 791
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->getInputDeviceIds()[I

    move-result-object v13

    .line 792
    .local v13, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 793
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 794
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 798
    .end local v13    # "_result":[I
    :sswitch_7c2
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 800
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_7d9

    const/4 v2, 0x1

    .line 801
    .local v2, "_arg0":Z
    :goto_7d0
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setInTouchMode(Z)V

    .line 802
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 803
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 800
    .end local v2    # "_arg0":Z
    :cond_7d9
    const/4 v2, 0x0

    goto :goto_7d0

    .line 807
    :sswitch_7db
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 809
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_7f2

    const/4 v2, 0x1

    .line 810
    .restart local v2    # "_arg0":Z
    :goto_7e9
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->showStrictModeViolation(Z)V

    .line 811
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 812
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 809
    .end local v2    # "_arg0":Z
    :cond_7f2
    const/4 v2, 0x0

    goto :goto_7e9

    .line 816
    :sswitch_7f4
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 818
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 819
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setStrictModeVisualIndicatorPreference(Ljava/lang/String;)V

    .line 820
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 821
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 825
    .end local v2    # "_arg0":Ljava/lang/String;
    :sswitch_808
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 827
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_81f

    const/4 v2, 0x1

    .line 828
    .local v2, "_arg0":Z
    :goto_816
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->updateRotation(Z)V

    .line 829
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 830
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 827
    .end local v2    # "_arg0":Z
    :cond_81f
    const/4 v2, 0x0

    goto :goto_816

    .line 834
    :sswitch_821
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 835
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->getRotation()I

    move-result v13

    .line 836
    .local v13, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 837
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 838
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 842
    .end local v13    # "_result":I
    :sswitch_837
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 844
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IRotationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IRotationWatcher;

    move-result-object v2

    .line 845
    .local v2, "_arg0":Landroid/view/IRotationWatcher;
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->watchRotation(Landroid/view/IRotationWatcher;)I

    move-result v13

    .line 846
    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 847
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 848
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 852
    .end local v2    # "_arg0":Landroid/view/IRotationWatcher;
    .end local v13    # "_result":I
    :sswitch_855
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 853
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->getPreferredOptionsPanelGravity()I

    move-result v13

    .line 854
    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 855
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 856
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 860
    .end local v13    # "_result":I
    :sswitch_86b
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 862
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 863
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->freezeRotation(I)V

    .line 864
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 865
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 869
    .end local v2    # "_arg0":I
    :sswitch_87f
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 870
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->thawRotation()V

    .line 871
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 872
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 876
    :sswitch_88f
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 878
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 880
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 882
    .local v3, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 883
    .restart local v4    # "_arg2":I
    invoke-virtual {p0, v2, v3, v4}, Landroid/view/IWindowManager$Stub;->screenshotApplications(Landroid/os/IBinder;II)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 884
    .local v13, "_result":Landroid/graphics/Bitmap;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 885
    if-eqz v13, :cond_8ba

    .line 886
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 887
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v13, v0, v1}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 892
    :goto_8b7
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 890
    :cond_8ba
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8b7

    .line 896
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v13    # "_result":Landroid/graphics/Bitmap;
    :sswitch_8c1
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 898
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 899
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->statusBarVisibilityChanged(I)V

    .line 900
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 901
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 905
    .end local v2    # "_arg0":I
    :sswitch_8d5
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 907
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 908
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setPointerSpeed(I)V

    .line 909
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 910
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 914
    .end local v2    # "_arg0":I
    :sswitch_8e9
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 916
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 918
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v3

    .line 919
    .local v3, "_arg1":Landroid/os/IRemoteCallback;
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->waitForWindowDrawn(Landroid/os/IBinder;Landroid/os/IRemoteCallback;)V

    .line 920
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 921
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 925
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Landroid/os/IRemoteCallback;
    :sswitch_905
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 926
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->hasNavigationBar()Z

    move-result v13

    .line 927
    .local v13, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 928
    if-eqz v13, :cond_91e

    const/4 v1, 0x1

    :goto_916
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 929
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 928
    :cond_91e
    const/4 v1, 0x0

    goto :goto_916

    .line 933
    .end local v13    # "_result":Z
    :sswitch_920
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 934
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->lockNow()V

    .line 935
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 936
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 43
    :sswitch_data_930
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_2f
        0x3 -> :sswitch_49
        0x4 -> :sswitch_63
        0x5 -> :sswitch_91
        0x6 -> :sswitch_b4
        0x7 -> :sswitch_de
        0x8 -> :sswitch_108
        0x9 -> :sswitch_11e
        0xa -> :sswitch_136
        0xb -> :sswitch_146
        0xc -> :sswitch_161
        0xd -> :sswitch_197
        0xe -> :sswitch_1cd
        0xf -> :sswitch_203
        0x10 -> :sswitch_230
        0x11 -> :sswitch_244
        0x12 -> :sswitch_258
        0x13 -> :sswitch_271
        0x14 -> :sswitch_289
        0x15 -> :sswitch_29d
        0x16 -> :sswitch_2cb
        0x17 -> :sswitch_2e3
        0x18 -> :sswitch_2ff
        0x19 -> :sswitch_31d
        0x1a -> :sswitch_33a
        0x1b -> :sswitch_357
        0x1c -> :sswitch_36d
        0x1d -> :sswitch_389
        0x1e -> :sswitch_399
        0x1f -> :sswitch_3f3
        0x20 -> :sswitch_407
        0x21 -> :sswitch_424
        0x22 -> :sswitch_43c
        0x23 -> :sswitch_459
        0x24 -> :sswitch_46d
        0x25 -> :sswitch_485
        0x26 -> :sswitch_499
        0x27 -> :sswitch_4ad
        0x28 -> :sswitch_4e9
        0x29 -> :sswitch_50b
        0x2a -> :sswitch_523
        0x2b -> :sswitch_537
        0x2c -> :sswitch_54f
        0x2d -> :sswitch_56a
        0x2e -> :sswitch_585
        0x2f -> :sswitch_5a0
        0x30 -> :sswitch_5b0
        0x31 -> :sswitch_5c4
        0x32 -> :sswitch_5de
        0x33 -> :sswitch_5f4
        0x34 -> :sswitch_60c
        0x35 -> :sswitch_620
        0x36 -> :sswitch_63a
        0x37 -> :sswitch_658
        0x38 -> :sswitch_672
        0x39 -> :sswitch_690
        0x3a -> :sswitch_6aa
        0x3b -> :sswitch_6c4
        0x3c -> :sswitch_6de
        0x3d -> :sswitch_6fc
        0x3e -> :sswitch_716
        0x3f -> :sswitch_730
        0x40 -> :sswitch_75a
        0x41 -> :sswitch_782
        0x42 -> :sswitch_7ac
        0x43 -> :sswitch_7c2
        0x44 -> :sswitch_7db
        0x45 -> :sswitch_7f4
        0x46 -> :sswitch_808
        0x47 -> :sswitch_821
        0x48 -> :sswitch_837
        0x49 -> :sswitch_855
        0x4a -> :sswitch_86b
        0x4b -> :sswitch_87f
        0x4c -> :sswitch_88f
        0x4d -> :sswitch_8c1
        0x4e -> :sswitch_8d5
        0x4f -> :sswitch_8e9
        0x50 -> :sswitch_905
        0x51 -> :sswitch_920
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
