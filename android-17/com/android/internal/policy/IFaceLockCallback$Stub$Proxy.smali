.class Lcom/android/internal/policy/IFaceLockCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IFaceLockCallback.java"

# interfaces
.implements Lcom/android/internal/policy/IFaceLockCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/IFaceLockCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/android/internal/policy/IFaceLockCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 85
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/internal/policy/IFaceLockCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public cancel()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 107
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 109
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.android.internal.policy.IFaceLockCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 110
    iget-object v1, p0, Lcom/android/internal/policy/IFaceLockCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_15

    .line 113
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 115
    return-void

    .line 113
    :catchall_15
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public exposeFallback()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 129
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 131
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.android.internal.policy.IFaceLockCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 132
    iget-object v1, p0, Lcom/android/internal/policy/IFaceLockCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_15

    .line 135
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 137
    return-void

    .line 135
    :catchall_15
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 92
    const-string v0, "com.android.internal.policy.IFaceLockCallback"

    return-object v0
.end method

.method public pokeWakelock()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 140
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 142
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.android.internal.policy.IFaceLockCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 143
    iget-object v1, p0, Lcom/android/internal/policy/IFaceLockCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_15

    .line 146
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 148
    return-void

    .line 146
    :catchall_15
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public reportFailedAttempt()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 118
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 120
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.android.internal.policy.IFaceLockCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 121
    iget-object v1, p0, Lcom/android/internal/policy/IFaceLockCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_15

    .line 124
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 126
    return-void

    .line 124
    :catchall_15
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public unlock()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 96
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 98
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.android.internal.policy.IFaceLockCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 99
    iget-object v1, p0, Lcom/android/internal/policy/IFaceLockCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_15

    .line 102
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 104
    return-void

    .line 102
    :catchall_15
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method
