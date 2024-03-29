.class public Lcom/android/commands/input/Input;
.super Ljava/lang/Object;
.source "Input.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 2
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 40
    new-instance v0, Lcom/android/commands/input/Input;

    invoke-direct {v0}, Lcom/android/commands/input/Input;-><init>()V

    invoke-direct {v0, p0}, Lcom/android/commands/input/Input;->run([Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method private run([Ljava/lang/String;)V
    .registers 6
    .param p1, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 44
    array-length v1, p1

    if-ge v1, v2, :cond_8

    .line 45
    invoke-direct {p0}, Lcom/android/commands/input/Input;->showUsage()V

    .line 64
    :goto_7
    return-void

    .line 49
    :cond_8
    const/4 v1, 0x0

    aget-object v0, p1, v1

    .line 51
    .local v0, "command":Ljava/lang/String;
    const-string v1, "text"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 52
    aget-object v1, p1, v2

    invoke-direct {p0, v1}, Lcom/android/commands/input/Input;->sendText(Ljava/lang/String;)V

    goto :goto_7

    .line 53
    :cond_19
    const-string v1, "keyevent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 54
    aget-object v1, p1, v2

    invoke-direct {p0, v1}, Lcom/android/commands/input/Input;->sendKeyEvent(Ljava/lang/String;)V

    goto :goto_7

    .line 55
    :cond_27
    const-string v1, "motionevent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 56
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Error: motionevent not yet supported."

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_7

    .line 60
    :cond_37
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: Unknown command: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 61
    invoke-direct {p0}, Lcom/android/commands/input/Input;->showUsage()V

    goto :goto_7
.end method

.method private sendKeyEvent(Ljava/lang/String;)V
    .registers 19
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    .line 118
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 119
    .local v7, "eventCode":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 120
    .local v2, "now":J
    const-string v4, "SendKeyEvent"

    move-object/from16 v0, p1

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :try_start_f
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-wide v4, v2

    invoke-direct/range {v1 .. v8}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 123
    .local v1, "down":Landroid/view/KeyEvent;
    new-instance v8, Landroid/view/KeyEvent;

    const/4 v13, 0x1

    const/4 v15, 0x0

    move-wide v9, v2

    move-wide v11, v2

    move v14, v7

    invoke-direct/range {v8 .. v15}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 124
    .local v8, "up":Landroid/view/KeyEvent;
    const-string v4, "window"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v1, v5}, Landroid/view/IWindowManager;->injectKeyEvent(Landroid/view/KeyEvent;Z)Z

    .line 127
    const-string v4, "window"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v8, v5}, Landroid/view/IWindowManager;->injectKeyEvent(Landroid/view/KeyEvent;Z)Z
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_3d} :catch_3e

    .line 133
    .end local v1    # "down":Landroid/view/KeyEvent;
    .end local v8    # "up":Landroid/view/KeyEvent;
    :goto_3d
    return-void

    .line 130
    :catch_3e
    move-exception v16

    .line 131
    .local v16, "e":Landroid/os/RemoteException;
    const-string v4, "Input"

    const-string v5, "DeadOjbectException"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d
.end method

.method private sendMotionEvent(JIFFFF)V
    .registers 8
    .param p1, "downTime"    # J
    .param p3, "action"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "pressure"    # F
    .param p7, "size"    # F

    .prologue
    .line 137
    return-void
.end method

.method private sendText(Ljava/lang/String;)V
    .registers 12
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 75
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 77
    .local v0, "buff":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .line 78
    .local v3, "escapeFlag":Z
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_7
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    if-ge v6, v8, :cond_2e

    .line 79
    if-eqz v3, :cond_22

    .line 80
    const/4 v3, 0x0

    .line 81
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v8

    const/16 v9, 0x73

    if-ne v8, v9, :cond_22

    .line 82
    const/16 v8, 0x20

    invoke-virtual {v0, v6, v8}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 83
    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 86
    :cond_22
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v8

    const/16 v9, 0x25

    if-ne v8, v9, :cond_2b

    .line 87
    const/4 v3, 0x1

    .line 78
    :cond_2b
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 91
    :cond_2e
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 93
    .local v1, "chars":[C
    const/4 v8, -0x1

    invoke-static {v8}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v7

    .line 96
    .local v7, "mKeyCharacterMap":Landroid/view/KeyCharacterMap;
    invoke-virtual {v7, v1}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v5

    .line 98
    .local v5, "events":[Landroid/view/KeyEvent;
    const/4 v6, 0x0

    :goto_40
    array-length v8, v5

    if-ge v6, v8, :cond_6c

    .line 99
    aget-object v4, v5, v6

    .line 100
    .local v4, "event":Landroid/view/KeyEvent;
    const-string v8, "SendKeyEvent"

    invoke-virtual {v4}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :try_start_52
    const-string v8, "window"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v8, v4, v9}, Landroid/view/IWindowManager;->injectKeyEvent(Landroid/view/KeyEvent;Z)Z
    :try_end_60
    .catch Landroid/os/RemoteException; {:try_start_52 .. :try_end_60} :catch_63

    .line 98
    :goto_60
    add-int/lit8 v6, v6, 0x1

    goto :goto_40

    .line 105
    :catch_63
    move-exception v2

    .line 106
    .local v2, "e":Landroid/os/RemoteException;
    const-string v8, "Input"

    const-string v9, "DeadOjbectException"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_60

    .line 109
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v4    # "event":Landroid/view/KeyEvent;
    :cond_6c
    return-void
.end method

.method private showUsage()V
    .registers 3

    .prologue
    .line 140
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "usage: input [text|keyevent]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 141
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       input text <string>"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 142
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       input keyevent <event_code>"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 143
    return-void
.end method
