.class Lcom/android/server/pm/PackageVerificationState;
.super Ljava/lang/Object;
.source "PackageVerificationState.java"


# instance fields
.field private final mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

.field private mRequiredVerificationComplete:Z

.field private mRequiredVerificationPassed:Z

.field private final mRequiredVerifierUid:I

.field private mSufficientVerificationComplete:Z

.field private mSufficientVerificationPassed:Z

.field private final mSufficientVerifierUids:Landroid/util/SparseBooleanArray;


# direct methods
.method public constructor <init>(ILcom/android/server/pm/PackageManagerService$InstallArgs;)V
    .registers 4
    .param p1, "requiredVerifierUid"    # I
    .param p2, "args"    # Lcom/android/server/pm/PackageManagerService$InstallArgs;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput p1, p0, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerifierUid:I

    .line 56
    iput-object p2, p0, Lcom/android/server/pm/PackageVerificationState;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    .line 57
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    .line 58
    return-void
.end method


# virtual methods
.method public addSufficientVerifier(I)V
    .registers 4
    .param p1, "uid"    # I

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 71
    return-void
.end method

.method public getInstallArgs()Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/server/pm/PackageVerificationState;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    return-object v0
.end method

.method public isInstallAllowed()Z
    .registers 2

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerificationPassed:Z

    if-nez v0, :cond_6

    .line 140
    const/4 v0, 0x0

    .line 147
    :goto_5
    return v0

    .line 143
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerificationComplete:Z

    if-eqz v0, :cond_d

    .line 144
    iget-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerificationPassed:Z

    goto :goto_5

    .line 147
    :cond_d
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public isVerificationComplete()Z
    .registers 2

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerificationComplete:Z

    if-nez v0, :cond_6

    .line 122
    const/4 v0, 0x0

    .line 129
    :goto_5
    return v0

    .line 125
    :cond_6
    iget-object v0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-nez v0, :cond_10

    .line 126
    const/4 v0, 0x1

    goto :goto_5

    .line 129
    :cond_10
    iget-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerificationComplete:Z

    goto :goto_5
.end method

.method public setVerifierResponse(II)Z
    .registers 6
    .param p1, "uid"    # I
    .param p2, "code"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 81
    iget v2, p0, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerifierUid:I

    if-ne p1, v2, :cond_16

    .line 82
    iput-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerificationComplete:Z

    .line 83
    packed-switch p2, :pswitch_data_36

    .line 91
    iput-boolean v1, p0, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerificationPassed:Z

    .line 110
    :cond_d
    :goto_d
    return v0

    .line 85
    :pswitch_e
    iget-object v1, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 88
    :pswitch_13
    iput-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerificationPassed:Z

    goto :goto_d

    .line 95
    :cond_16
    iget-object v2, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 96
    if-ne p2, v0, :cond_24

    .line 97
    iput-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerificationComplete:Z

    .line 98
    iput-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerificationPassed:Z

    .line 101
    :cond_24
    iget-object v1, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 102
    iget-object v1, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-nez v1, :cond_d

    .line 103
    iput-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerificationComplete:Z

    goto :goto_d

    :cond_34
    move v0, v1

    .line 110
    goto :goto_d

    .line 83
    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_13
        :pswitch_e
    .end packed-switch
.end method
