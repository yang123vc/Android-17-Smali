.class public Lcom/android/org/bouncycastle/jce/ProviderConfigurationPermission;
.super Ljava/security/BasicPermission;
.source "ProviderConfigurationPermission.java"


# static fields
.field private static final ALL:I = 0x3

.field private static final ALL_STR:Ljava/lang/String; = "all"

.field private static final EC_IMPLICITLY_CA:I = 0x2

.field private static final EC_IMPLICITLY_CA_STR:Ljava/lang/String; = "ecimplicitlyca"

.field private static final THREAD_LOCAL_EC_IMPLICITLY_CA:I = 0x1

.field private static final THREAD_LOCAL_EC_IMPLICITLY_CA_STR:Ljava/lang/String; = "threadlocalecimplicitlyca"


# instance fields
.field private final actions:Ljava/lang/String;

.field private final permissionMask:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Ljava/security/BasicPermission;-><init>(Ljava/lang/String;)V

    .line 45
    const-string v0, "all"

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/ProviderConfigurationPermission;->actions:Ljava/lang/String;

    .line 46
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/org/bouncycastle/jce/ProviderConfigurationPermission;->permissionMask:I

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "actions"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/security/BasicPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iput-object p2, p0, Lcom/android/org/bouncycastle/jce/ProviderConfigurationPermission;->actions:Ljava/lang/String;

    .line 53
    invoke-direct {p0, p2}, Lcom/android/org/bouncycastle/jce/ProviderConfigurationPermission;->calculateMask(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/org/bouncycastle/jce/ProviderConfigurationPermission;->permissionMask:I

    .line 54
    return-void
.end method

.method private calculateMask(Ljava/lang/String;)I
    .registers 7
    .param p1, "actions"    # Ljava/lang/String;

    .prologue
    .line 59
    new-instance v2, Ljava/util/StringTokenizer;

    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, " ,"

    invoke-direct {v2, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .local v2, "tok":Ljava/util/StringTokenizer;
    const/4 v0, 0x0

    .line 62
    .local v0, "mask":I
    :cond_c
    :goto_c
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_37

    .line 64
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, "s":Ljava/lang/String;
    const-string v3, "threadlocalecimplicitlyca"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 68
    or-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 70
    :cond_21
    const-string v3, "ecimplicitlyca"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 72
    or-int/lit8 v0, v0, 0x2

    goto :goto_c

    .line 74
    :cond_2c
    const-string v3, "all"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 76
    or-int/lit8 v0, v0, 0x3

    goto :goto_c

    .line 80
    .end local v1    # "s":Ljava/lang/String;
    :cond_37
    if-nez v0, :cond_41

    .line 82
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "unknown permissions passed to mask"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 85
    :cond_41
    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 114
    if-ne p1, p0, :cond_5

    .line 126
    :cond_4
    :goto_4
    return v1

    .line 119
    :cond_5
    instance-of v3, p1, Lcom/android/org/bouncycastle/jce/ProviderConfigurationPermission;

    if-eqz v3, :cond_22

    move-object v0, p1

    .line 121
    check-cast v0, Lcom/android/org/bouncycastle/jce/ProviderConfigurationPermission;

    .line 123
    .local v0, "other":Lcom/android/org/bouncycastle/jce/ProviderConfigurationPermission;
    iget v3, p0, Lcom/android/org/bouncycastle/jce/ProviderConfigurationPermission;->permissionMask:I

    iget v4, v0, Lcom/android/org/bouncycastle/jce/ProviderConfigurationPermission;->permissionMask:I

    if-ne v3, v4, :cond_20

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/ProviderConfigurationPermission;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jce/ProviderConfigurationPermission;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_20
    move v1, v2

    goto :goto_4

    .end local v0    # "other":Lcom/android/org/bouncycastle/jce/ProviderConfigurationPermission;
    :cond_22
    move v1, v2

    .line 126
    goto :goto_4
.end method

.method public getActions()Ljava/lang/String;
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/ProviderConfigurationPermission;->actions:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/ProviderConfigurationPermission;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/android/org/bouncycastle/jce/ProviderConfigurationPermission;->permissionMask:I

    add-int/2addr v0, v1

    return v0
.end method

.method public implies(Ljava/security/Permission;)Z
    .registers 6
    .param p1, "permission"    # Ljava/security/Permission;

    .prologue
    const/4 v1, 0x0

    .line 96
    instance-of v2, p1, Lcom/android/org/bouncycastle/jce/ProviderConfigurationPermission;

    if-nez v2, :cond_6

    .line 108
    :cond_5
    :goto_5
    return v1

    .line 101
    :cond_6
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/ProviderConfigurationPermission;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/security/Permission;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object v0, p1

    .line 106
    check-cast v0, Lcom/android/org/bouncycastle/jce/ProviderConfigurationPermission;

    .line 108
    .local v0, "other":Lcom/android/org/bouncycastle/jce/ProviderConfigurationPermission;
    iget v2, p0, Lcom/android/org/bouncycastle/jce/ProviderConfigurationPermission;->permissionMask:I

    iget v3, v0, Lcom/android/org/bouncycastle/jce/ProviderConfigurationPermission;->permissionMask:I

    and-int/2addr v2, v3

    iget v3, v0, Lcom/android/org/bouncycastle/jce/ProviderConfigurationPermission;->permissionMask:I

    if-ne v2, v3, :cond_5

    const/4 v1, 0x1

    goto :goto_5
.end method
