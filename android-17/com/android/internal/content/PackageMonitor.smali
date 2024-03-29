.class public abstract Lcom/android/internal/content/PackageMonitor;
.super Landroid/content/BroadcastReceiver;
.source "PackageMonitor.java"


# static fields
.field public static final PACKAGE_PERMANENT_CHANGE:I = 0x3

.field public static final PACKAGE_TEMPORARY_CHANGE:I = 0x2

.field public static final PACKAGE_UNCHANGED:I = 0x0

.field public static final PACKAGE_UPDATING:I = 0x1

.field static final sExternalFilt:Landroid/content/IntentFilter;

.field static final sNonDataFilt:Landroid/content/IntentFilter;

.field static final sPackageFilt:Landroid/content/IntentFilter;


# instance fields
.field mAppearingPackages:[Ljava/lang/String;

.field mChangeType:I

.field mDisappearingPackages:[Ljava/lang/String;

.field mModifiedPackages:[Ljava/lang/String;

.field mRegisteredContext:Landroid/content/Context;

.field mSomePackagesChanged:Z

.field mTempArray:[Ljava/lang/String;

.field final mUpdatingPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 32
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/android/internal/content/PackageMonitor;->sPackageFilt:Landroid/content/IntentFilter;

    .line 33
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/android/internal/content/PackageMonitor;->sNonDataFilt:Landroid/content/IntentFilter;

    .line 34
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/android/internal/content/PackageMonitor;->sExternalFilt:Landroid/content/IntentFilter;

    .line 37
    sget-object v0, Lcom/android/internal/content/PackageMonitor;->sPackageFilt:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 38
    sget-object v0, Lcom/android/internal/content/PackageMonitor;->sPackageFilt:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 39
    sget-object v0, Lcom/android/internal/content/PackageMonitor;->sPackageFilt:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 40
    sget-object v0, Lcom/android/internal/content/PackageMonitor;->sPackageFilt:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 41
    sget-object v0, Lcom/android/internal/content/PackageMonitor;->sPackageFilt:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 42
    sget-object v0, Lcom/android/internal/content/PackageMonitor;->sPackageFilt:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.UID_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 43
    sget-object v0, Lcom/android/internal/content/PackageMonitor;->sPackageFilt:Landroid/content/IntentFilter;

    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 44
    sget-object v0, Lcom/android/internal/content/PackageMonitor;->sNonDataFilt:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.UID_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 45
    sget-object v0, Lcom/android/internal/content/PackageMonitor;->sExternalFilt:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 46
    sget-object v0, Lcom/android/internal/content/PackageMonitor;->sExternalFilt:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 49
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mUpdatingPackages:Ljava/util/HashSet;

    .line 58
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mTempArray:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public anyPackagesAppearing()Z
    .registers 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mAppearingPackages:[Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public anyPackagesDisappearing()Z
    .registers 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public didSomePackagesChange()Z
    .registers 2

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/android/internal/content/PackageMonitor;->mSomePackagesChanged:Z

    return v0
.end method

.method getPackageName(Landroid/content/Intent;)Ljava/lang/String;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 184
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 185
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_b

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, "pkg":Ljava/lang/String;
    :goto_a
    return-object v0

    .line 185
    .end local v0    # "pkg":Ljava/lang/String;
    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isPackageAppearing(Ljava/lang/String;)I
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 137
    iget-object v1, p0, Lcom/android/internal/content/PackageMonitor;->mAppearingPackages:[Ljava/lang/String;

    if-eqz v1, :cond_1b

    .line 138
    iget-object v1, p0, Lcom/android/internal/content/PackageMonitor;->mAppearingPackages:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_9
    if-ltz v0, :cond_1b

    .line 139
    iget-object v1, p0, Lcom/android/internal/content/PackageMonitor;->mAppearingPackages:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 140
    iget v1, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    .line 144
    .end local v0    # "i":I
    :goto_17
    return v1

    .line 138
    .restart local v0    # "i":I
    :cond_18
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 144
    .end local v0    # "i":I
    :cond_1b
    const/4 v1, 0x0

    goto :goto_17
.end method

.method public isPackageDisappearing(Ljava/lang/String;)I
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 152
    iget-object v1, p0, Lcom/android/internal/content/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    if-eqz v1, :cond_1b

    .line 153
    iget-object v1, p0, Lcom/android/internal/content/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_9
    if-ltz v0, :cond_1b

    .line 154
    iget-object v1, p0, Lcom/android/internal/content/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 155
    iget v1, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    .line 159
    .end local v0    # "i":I
    :goto_17
    return v1

    .line 153
    .restart local v0    # "i":I
    :cond_18
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 159
    .end local v0    # "i":I
    :cond_1b
    const/4 v1, 0x0

    goto :goto_17
.end method

.method public isPackageModified(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 167
    iget-object v1, p0, Lcom/android/internal/content/PackageMonitor;->mModifiedPackages:[Ljava/lang/String;

    if-eqz v1, :cond_1a

    .line 168
    iget-object v1, p0, Lcom/android/internal/content/PackageMonitor;->mModifiedPackages:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_9
    if-ltz v0, :cond_1a

    .line 169
    iget-object v1, p0, Lcom/android/internal/content/PackageMonitor;->mModifiedPackages:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 170
    const/4 v1, 0x1

    .line 174
    .end local v0    # "i":I
    :goto_16
    return v1

    .line 168
    .restart local v0    # "i":I
    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 174
    .end local v0    # "i":I
    :cond_1a
    const/4 v1, 0x0

    goto :goto_16
.end method

.method isPackageUpdating(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 82
    iget-object v1, p0, Lcom/android/internal/content/PackageMonitor;->mUpdatingPackages:Ljava/util/HashSet;

    monitor-enter v1

    .line 83
    :try_start_3
    iget-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mUpdatingPackages:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 84
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public onBeginPackageChanges()V
    .registers 1

    .prologue
    .line 88
    return-void
.end method

.method public onFinishPackageChanges()V
    .registers 1

    .prologue
    .line 181
    return-void
.end method

.method public onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "packages"    # [Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "doit"    # Z

    .prologue
    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public onPackageAdded(Ljava/lang/String;I)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 91
    return-void
.end method

.method public onPackageAppeared(Ljava/lang/String;I)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .prologue
    .line 127
    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;I[Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "components"    # [Ljava/lang/String;

    .prologue
    .line 103
    return-void
.end method

.method public onPackageDisappeared(Ljava/lang/String;I)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .prologue
    .line 124
    return-void
.end method

.method public onPackageModified(Ljava/lang/String;)V
    .registers 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 130
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 94
    return-void
.end method

.method public onPackageUpdateFinished(Ljava/lang/String;I)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 100
    return-void
.end method

.method public onPackageUpdateStarted(Ljava/lang/String;I)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 97
    return-void
.end method

.method public onPackagesAvailable([Ljava/lang/String;)V
    .registers 2
    .param p1, "packages"    # [Ljava/lang/String;

    .prologue
    .line 113
    return-void
.end method

.method public onPackagesUnavailable([Ljava/lang/String;)V
    .registers 2
    .param p1, "packages"    # [Ljava/lang/String;

    .prologue
    .line 116
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 191
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->onBeginPackageChanges()V

    .line 193
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/internal/content/PackageMonitor;->mAppearingPackages:[Ljava/lang/String;

    iput-object v7, p0, Lcom/android/internal/content/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    .line 194
    iput-boolean v9, p0, Lcom/android/internal/content/PackageMonitor;->mSomePackagesChanged:Z

    .line 196
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, "action":Ljava/lang/String;
    const-string v7, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6a

    .line 198
    invoke-virtual {p0, p2}, Lcom/android/internal/content/PackageMonitor;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    .line 199
    .local v4, "pkg":Ljava/lang/String;
    const-string v7, "android.intent.extra.UID"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 203
    .local v6, "uid":I
    iput-boolean v10, p0, Lcom/android/internal/content/PackageMonitor;->mSomePackagesChanged:Z

    .line 204
    if-eqz v4, :cond_56

    .line 205
    iget-object v7, p0, Lcom/android/internal/content/PackageMonitor;->mTempArray:[Ljava/lang/String;

    iput-object v7, p0, Lcom/android/internal/content/PackageMonitor;->mAppearingPackages:[Ljava/lang/String;

    .line 206
    iget-object v7, p0, Lcom/android/internal/content/PackageMonitor;->mTempArray:[Ljava/lang/String;

    aput-object v4, v7, v9

    .line 207
    const-string v7, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_61

    .line 208
    iget-object v7, p0, Lcom/android/internal/content/PackageMonitor;->mTempArray:[Ljava/lang/String;

    iput-object v7, p0, Lcom/android/internal/content/PackageMonitor;->mModifiedPackages:[Ljava/lang/String;

    .line 209
    iput v10, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    .line 210
    invoke-virtual {p0, v4, v6}, Lcom/android/internal/content/PackageMonitor;->onPackageUpdateFinished(Ljava/lang/String;I)V

    .line 211
    invoke-virtual {p0, v4}, Lcom/android/internal/content/PackageMonitor;->onPackageModified(Ljava/lang/String;)V

    .line 216
    :goto_44
    iget v7, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    invoke-virtual {p0, v4, v7}, Lcom/android/internal/content/PackageMonitor;->onPackageAppeared(Ljava/lang/String;I)V

    .line 217
    iget v7, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    if-ne v7, v10, :cond_56

    .line 218
    iget-object v8, p0, Lcom/android/internal/content/PackageMonitor;->mUpdatingPackages:Ljava/util/HashSet;

    monitor-enter v8

    .line 219
    :try_start_50
    iget-object v7, p0, Lcom/android/internal/content/PackageMonitor;->mUpdatingPackages:Ljava/util/HashSet;

    invoke-virtual {v7, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 220
    monitor-exit v8
    :try_end_56
    .catchall {:try_start_50 .. :try_end_56} :catchall_67

    .line 297
    .end local v4    # "pkg":Ljava/lang/String;
    .end local v6    # "uid":I
    :cond_56
    :goto_56
    iget-boolean v7, p0, Lcom/android/internal/content/PackageMonitor;->mSomePackagesChanged:Z

    if-eqz v7, :cond_5d

    .line 298
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->onSomePackagesChanged()V

    .line 301
    :cond_5d
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->onFinishPackageChanges()V

    .line 302
    return-void

    .line 213
    .restart local v4    # "pkg":Ljava/lang/String;
    .restart local v6    # "uid":I
    :cond_61
    iput v8, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    .line 214
    invoke-virtual {p0, v4, v6}, Lcom/android/internal/content/PackageMonitor;->onPackageAdded(Ljava/lang/String;I)V

    goto :goto_44

    .line 220
    :catchall_67
    move-exception v7

    :try_start_68
    monitor-exit v8
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_67

    throw v7

    .line 223
    .end local v4    # "pkg":Ljava/lang/String;
    .end local v6    # "uid":I
    :cond_6a
    const-string v7, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a8

    .line 224
    invoke-virtual {p0, p2}, Lcom/android/internal/content/PackageMonitor;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    .line 225
    .restart local v4    # "pkg":Ljava/lang/String;
    const-string v7, "android.intent.extra.UID"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 226
    .restart local v6    # "uid":I
    if-eqz v4, :cond_56

    .line 227
    iget-object v7, p0, Lcom/android/internal/content/PackageMonitor;->mTempArray:[Ljava/lang/String;

    iput-object v7, p0, Lcom/android/internal/content/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    .line 228
    iget-object v7, p0, Lcom/android/internal/content/PackageMonitor;->mTempArray:[Ljava/lang/String;

    aput-object v4, v7, v9

    .line 229
    const-string v7, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_a0

    .line 230
    iput v10, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    .line 231
    iget-object v8, p0, Lcom/android/internal/content/PackageMonitor;->mUpdatingPackages:Ljava/util/HashSet;

    monitor-enter v8

    .line 234
    :try_start_93
    monitor-exit v8
    :try_end_94
    .catchall {:try_start_93 .. :try_end_94} :catchall_9d

    .line 235
    invoke-virtual {p0, v4, v6}, Lcom/android/internal/content/PackageMonitor;->onPackageUpdateStarted(Ljava/lang/String;I)V

    .line 244
    :goto_97
    iget v7, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    invoke-virtual {p0, v4, v7}, Lcom/android/internal/content/PackageMonitor;->onPackageDisappeared(Ljava/lang/String;I)V

    goto :goto_56

    .line 234
    :catchall_9d
    move-exception v7

    :try_start_9e
    monitor-exit v8
    :try_end_9f
    .catchall {:try_start_9e .. :try_end_9f} :catchall_9d

    throw v7

    .line 237
    :cond_a0
    iput v8, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    .line 241
    iput-boolean v10, p0, Lcom/android/internal/content/PackageMonitor;->mSomePackagesChanged:Z

    .line 242
    invoke-virtual {p0, v4, v6}, Lcom/android/internal/content/PackageMonitor;->onPackageRemoved(Ljava/lang/String;I)V

    goto :goto_97

    .line 246
    .end local v4    # "pkg":Ljava/lang/String;
    .end local v6    # "uid":I
    :cond_a8
    const-string v7, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d1

    .line 247
    invoke-virtual {p0, p2}, Lcom/android/internal/content/PackageMonitor;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    .line 248
    .restart local v4    # "pkg":Ljava/lang/String;
    const-string v7, "android.intent.extra.UID"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 249
    .restart local v6    # "uid":I
    const-string v7, "android.intent.extra.changed_component_name_list"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 251
    .local v2, "components":[Ljava/lang/String;
    if-eqz v4, :cond_56

    .line 252
    iget-object v7, p0, Lcom/android/internal/content/PackageMonitor;->mTempArray:[Ljava/lang/String;

    iput-object v7, p0, Lcom/android/internal/content/PackageMonitor;->mModifiedPackages:[Ljava/lang/String;

    .line 253
    iget-object v7, p0, Lcom/android/internal/content/PackageMonitor;->mTempArray:[Ljava/lang/String;

    aput-object v4, v7, v9

    .line 254
    invoke-virtual {p0, v4, v6, v2}, Lcom/android/internal/content/PackageMonitor;->onPackageChanged(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 257
    invoke-virtual {p0, v4}, Lcom/android/internal/content/PackageMonitor;->onPackageModified(Ljava/lang/String;)V

    goto :goto_56

    .line 259
    .end local v2    # "components":[Ljava/lang/String;
    .end local v4    # "pkg":Ljava/lang/String;
    .end local v6    # "uid":I
    :cond_d1
    const-string v7, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f7

    .line 260
    const-string v7, "android.intent.extra.PACKAGES"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/content/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    .line 261
    iput v11, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    .line 262
    iget-object v7, p0, Lcom/android/internal/content/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    const-string v8, "android.intent.extra.UID"

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {p0, p2, v7, v8, v9}, Lcom/android/internal/content/PackageMonitor;->onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z

    move-result v1

    .line 265
    .local v1, "canRestart":Z
    if-eqz v1, :cond_56

    const/4 v7, -0x1

    invoke-virtual {p0, v7}, Lcom/android/internal/content/PackageMonitor;->setResultCode(I)V

    goto/16 :goto_56

    .line 266
    .end local v1    # "canRestart":Z
    :cond_f7
    const-string v7, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_118

    .line 267
    new-array v7, v10, [Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/android/internal/content/PackageMonitor;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    iput-object v7, p0, Lcom/android/internal/content/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    .line 268
    iput v11, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    .line 269
    iget-object v7, p0, Lcom/android/internal/content/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    const-string v8, "android.intent.extra.UID"

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {p0, p2, v7, v8, v10}, Lcom/android/internal/content/PackageMonitor;->onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z

    goto/16 :goto_56

    .line 271
    :cond_118
    const-string v7, "android.intent.action.UID_REMOVED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12b

    .line 272
    const-string v7, "android.intent.extra.UID"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/android/internal/content/PackageMonitor;->onUidRemoved(I)V

    goto/16 :goto_56

    .line 273
    :cond_12b
    const-string v7, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_150

    .line 274
    const-string v7, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 275
    .local v5, "pkgList":[Ljava/lang/String;
    iput-object v5, p0, Lcom/android/internal/content/PackageMonitor;->mAppearingPackages:[Ljava/lang/String;

    .line 276
    iput v11, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    .line 277
    iput-boolean v10, p0, Lcom/android/internal/content/PackageMonitor;->mSomePackagesChanged:Z

    .line 278
    if-eqz v5, :cond_56

    .line 279
    invoke-virtual {p0, v5}, Lcom/android/internal/content/PackageMonitor;->onPackagesAvailable([Ljava/lang/String;)V

    .line 280
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_145
    array-length v7, v5

    if-ge v3, v7, :cond_56

    .line 281
    aget-object v7, v5, v3

    invoke-virtual {p0, v7, v11}, Lcom/android/internal/content/PackageMonitor;->onPackageAppeared(Ljava/lang/String;I)V

    .line 280
    add-int/lit8 v3, v3, 0x1

    goto :goto_145

    .line 284
    .end local v3    # "i":I
    .end local v5    # "pkgList":[Ljava/lang/String;
    :cond_150
    const-string v7, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_56

    .line 285
    const-string v7, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 286
    .restart local v5    # "pkgList":[Ljava/lang/String;
    iput-object v5, p0, Lcom/android/internal/content/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    .line 287
    iput v11, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    .line 288
    iput-boolean v10, p0, Lcom/android/internal/content/PackageMonitor;->mSomePackagesChanged:Z

    .line 289
    if-eqz v5, :cond_56

    .line 290
    invoke-virtual {p0, v5}, Lcom/android/internal/content/PackageMonitor;->onPackagesUnavailable([Ljava/lang/String;)V

    .line 291
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_16a
    array-length v7, v5

    if-ge v3, v7, :cond_56

    .line 292
    aget-object v7, v5, v3

    invoke-virtual {p0, v7, v11}, Lcom/android/internal/content/PackageMonitor;->onPackageDisappeared(Ljava/lang/String;I)V

    .line 291
    add-int/lit8 v3, v3, 0x1

    goto :goto_16a
.end method

.method public onSomePackagesChanged()V
    .registers 1

    .prologue
    .line 178
    return-void
.end method

.method public onUidRemoved(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 110
    return-void
.end method

.method public register(Landroid/content/Context;Z)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "externalStorage"    # Z

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredContext:Landroid/content/Context;

    if-eqz v0, :cond_c

    .line 62
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_c
    iput-object p1, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredContext:Landroid/content/Context;

    .line 65
    sget-object v0, Lcom/android/internal/content/PackageMonitor;->sPackageFilt:Landroid/content/IntentFilter;

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 66
    sget-object v0, Lcom/android/internal/content/PackageMonitor;->sNonDataFilt:Landroid/content/IntentFilter;

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 67
    if-eqz p2, :cond_1f

    .line 68
    sget-object v0, Lcom/android/internal/content/PackageMonitor;->sExternalFilt:Landroid/content/IntentFilter;

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 70
    :cond_1f
    return-void
.end method

.method public unregister()V
    .registers 3

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredContext:Landroid/content/Context;

    if-nez v0, :cond_c

    .line 74
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_c
    iget-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredContext:Landroid/content/Context;

    .line 78
    return-void
.end method
