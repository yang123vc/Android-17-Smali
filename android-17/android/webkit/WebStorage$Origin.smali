.class public Landroid/webkit/WebStorage$Origin;
.super Ljava/lang/Object;
.source "WebStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Origin"
.end annotation


# instance fields
.field private mOrigin:Ljava/lang/String;

.field private mQuota:J

.field private mUsage:J


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .registers 5
    .param p1, "origin"    # Ljava/lang/String;

    .prologue
    const-wide/16 v1, 0x0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebStorage$Origin;->mOrigin:Ljava/lang/String;

    .line 83
    iput-wide v1, p0, Landroid/webkit/WebStorage$Origin;->mQuota:J

    .line 84
    iput-wide v1, p0, Landroid/webkit/WebStorage$Origin;->mUsage:J

    .line 98
    iput-object p1, p0, Landroid/webkit/WebStorage$Origin;->mOrigin:Ljava/lang/String;

    .line 99
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;J)V
    .registers 7
    .param p1, "origin"    # Ljava/lang/String;
    .param p2, "quota"    # J

    .prologue
    const-wide/16 v1, 0x0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebStorage$Origin;->mOrigin:Ljava/lang/String;

    .line 83
    iput-wide v1, p0, Landroid/webkit/WebStorage$Origin;->mQuota:J

    .line 84
    iput-wide v1, p0, Landroid/webkit/WebStorage$Origin;->mUsage:J

    .line 93
    iput-object p1, p0, Landroid/webkit/WebStorage$Origin;->mOrigin:Ljava/lang/String;

    .line 94
    iput-wide p2, p0, Landroid/webkit/WebStorage$Origin;->mQuota:J

    .line 95
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;JJ)V
    .registers 9
    .param p1, "origin"    # Ljava/lang/String;
    .param p2, "quota"    # J
    .param p4, "usage"    # J

    .prologue
    const-wide/16 v1, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebStorage$Origin;->mOrigin:Ljava/lang/String;

    .line 83
    iput-wide v1, p0, Landroid/webkit/WebStorage$Origin;->mQuota:J

    .line 84
    iput-wide v1, p0, Landroid/webkit/WebStorage$Origin;->mUsage:J

    .line 87
    iput-object p1, p0, Landroid/webkit/WebStorage$Origin;->mOrigin:Ljava/lang/String;

    .line 88
    iput-wide p2, p0, Landroid/webkit/WebStorage$Origin;->mQuota:J

    .line 89
    iput-wide p4, p0, Landroid/webkit/WebStorage$Origin;->mUsage:J

    .line 90
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;JJLandroid/webkit/WebStorage$1;)V
    .registers 7
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # J
    .param p4, "x2"    # J
    .param p6, "x3"    # Landroid/webkit/WebStorage$1;

    .prologue
    .line 81
    invoke-direct/range {p0 .. p5}, Landroid/webkit/WebStorage$Origin;-><init>(Ljava/lang/String;JJ)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;JLandroid/webkit/WebStorage$1;)V
    .registers 5
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # J
    .param p4, "x2"    # Landroid/webkit/WebStorage$1;

    .prologue
    .line 81
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebStorage$Origin;-><init>(Ljava/lang/String;J)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Landroid/webkit/WebStorage$1;)V
    .registers 3
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Landroid/webkit/WebStorage$1;

    .prologue
    .line 81
    invoke-direct {p0, p1}, Landroid/webkit/WebStorage$Origin;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getOrigin()Ljava/lang/String;
    .registers 2

    .prologue
    .line 110
    iget-object v0, p0, Landroid/webkit/WebStorage$Origin;->mOrigin:Ljava/lang/String;

    return-object v0
.end method

.method public getQuota()J
    .registers 3

    .prologue
    .line 118
    iget-wide v0, p0, Landroid/webkit/WebStorage$Origin;->mQuota:J

    return-wide v0
.end method

.method public getUsage()J
    .registers 3

    .prologue
    .line 126
    iget-wide v0, p0, Landroid/webkit/WebStorage$Origin;->mUsage:J

    return-wide v0
.end method
