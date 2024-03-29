.class public Landroid/drm/DrmEvent;
.super Ljava/lang/Object;
.source "DrmEvent.java"


# static fields
.field public static final DRM_INFO_OBJECT:Ljava/lang/String; = "drm_info_object"

.field public static final DRM_INFO_STATUS_OBJECT:Ljava/lang/String; = "drm_info_status_object"

.field public static final TYPE_ALL_RIGHTS_REMOVED:I = 0x3e9

.field public static final TYPE_DRM_INFO_PROCESSED:I = 0x3ea


# instance fields
.field private mAttributes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mMessage:Ljava/lang/String;

.field private final mType:I

.field private final mUniqueId:I


# direct methods
.method protected constructor <init>(IILjava/lang/String;)V
    .registers 5
    .param p1, "uniqueId"    # I
    .param p2, "type"    # I
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-string v0, ""

    iput-object v0, p0, Landroid/drm/DrmEvent;->mMessage:Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/drm/DrmEvent;->mAttributes:Ljava/util/HashMap;

    .line 80
    iput p1, p0, Landroid/drm/DrmEvent;->mUniqueId:I

    .line 81
    iput p2, p0, Landroid/drm/DrmEvent;->mType:I

    .line 83
    if-eqz p3, :cond_16

    .line 84
    iput-object p3, p0, Landroid/drm/DrmEvent;->mMessage:Ljava/lang/String;

    .line 86
    :cond_16
    return-void
.end method

.method protected constructor <init>(IILjava/lang/String;Ljava/util/HashMap;)V
    .registers 6
    .param p1, "uniqueId"    # I
    .param p2, "type"    # I
    .param p3, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p4, "attributes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-string v0, ""

    iput-object v0, p0, Landroid/drm/DrmEvent;->mMessage:Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/drm/DrmEvent;->mAttributes:Ljava/util/HashMap;

    .line 60
    iput p1, p0, Landroid/drm/DrmEvent;->mUniqueId:I

    .line 61
    iput p2, p0, Landroid/drm/DrmEvent;->mType:I

    .line 63
    if-eqz p3, :cond_16

    .line 64
    iput-object p3, p0, Landroid/drm/DrmEvent;->mMessage:Ljava/lang/String;

    .line 67
    :cond_16
    if-eqz p4, :cond_1a

    .line 68
    iput-object p4, p0, Landroid/drm/DrmEvent;->mAttributes:Ljava/util/HashMap;

    .line 70
    :cond_1a
    return-void
.end method


# virtual methods
.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 122
    iget-object v0, p0, Landroid/drm/DrmEvent;->mAttributes:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Landroid/drm/DrmEvent;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 103
    iget v0, p0, Landroid/drm/DrmEvent;->mType:I

    return v0
.end method

.method public getUniqueId()I
    .registers 2

    .prologue
    .line 94
    iget v0, p0, Landroid/drm/DrmEvent;->mUniqueId:I

    return v0
.end method
