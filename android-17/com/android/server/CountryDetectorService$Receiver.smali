.class final Lcom/android/server/CountryDetectorService$Receiver;
.super Ljava/lang/Object;
.source "CountryDetectorService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/CountryDetectorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Receiver"
.end annotation


# instance fields
.field private final mKey:Landroid/os/IBinder;

.field private final mListener:Landroid/location/ICountryListener;

.field final synthetic this$0:Lcom/android/server/CountryDetectorService;


# direct methods
.method public constructor <init>(Lcom/android/server/CountryDetectorService;Landroid/location/ICountryListener;)V
    .registers 4
    .param p2, "listener"    # Landroid/location/ICountryListener;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/server/CountryDetectorService$Receiver;->this$0:Lcom/android/server/CountryDetectorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p2, p0, Lcom/android/server/CountryDetectorService$Receiver;->mListener:Landroid/location/ICountryListener;

    .line 57
    invoke-interface {p2}, Landroid/location/ICountryListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/CountryDetectorService$Receiver;->mKey:Landroid/os/IBinder;

    .line 58
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/server/CountryDetectorService$Receiver;->this$0:Lcom/android/server/CountryDetectorService;

    iget-object v1, p0, Lcom/android/server/CountryDetectorService$Receiver;->mKey:Landroid/os/IBinder;

    # invokes: Lcom/android/server/CountryDetectorService;->removeListener(Landroid/os/IBinder;)V
    invoke-static {v0, v1}, Lcom/android/server/CountryDetectorService;->access$000(Lcom/android/server/CountryDetectorService;Landroid/os/IBinder;)V

    .line 62
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "otherObj"    # Ljava/lang/Object;

    .prologue
    .line 66
    instance-of v0, p1, Lcom/android/server/CountryDetectorService$Receiver;

    if-eqz v0, :cond_f

    .line 67
    iget-object v0, p0, Lcom/android/server/CountryDetectorService$Receiver;->mKey:Landroid/os/IBinder;

    check-cast p1, Lcom/android/server/CountryDetectorService$Receiver;

    .end local p1    # "otherObj":Ljava/lang/Object;
    iget-object v1, p1, Lcom/android/server/CountryDetectorService$Receiver;->mKey:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 69
    :goto_e
    return v0

    .restart local p1    # "otherObj":Ljava/lang/Object;
    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public getListener()Landroid/location/ICountryListener;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/server/CountryDetectorService$Receiver;->mListener:Landroid/location/ICountryListener;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/server/CountryDetectorService$Receiver;->mKey:Landroid/os/IBinder;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
