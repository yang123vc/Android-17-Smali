.class public Landroid/provider/ContactsContract$StatusUpdates;
.super Ljava/lang/Object;
.source "ContactsContract.java"

# interfaces
.implements Landroid/provider/ContactsContract$PresenceColumns;
.implements Landroid/provider/ContactsContract$StatusColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StatusUpdates"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/status-update"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/status-update"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final PROFILE_CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 4888
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "status_updates"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract$StatusUpdates;->CONTENT_URI:Landroid/net/Uri;

    .line 4893
    sget-object v0, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "status_updates"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract$StatusUpdates;->PROFILE_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 4883
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/provider/ContactsContract$1;)V
    .registers 2
    .param p1, "x0"    # Landroid/provider/ContactsContract$1;

    .prologue
    .line 4878
    invoke-direct {p0}, Landroid/provider/ContactsContract$StatusUpdates;-><init>()V

    return-void
.end method

.method public static final getPresenceIconResourceId(I)I
    .registers 2
    .param p0, "status"    # I

    .prologue
    .line 4903
    packed-switch p0, :pswitch_data_18

    .line 4915
    const v0, 0x108006a

    :goto_6
    return v0

    .line 4905
    :pswitch_7
    const v0, 0x108006b

    goto :goto_6

    .line 4908
    :pswitch_b
    const v0, 0x1080067

    goto :goto_6

    .line 4910
    :pswitch_f
    const v0, 0x1080068

    goto :goto_6

    .line 4912
    :pswitch_13
    const v0, 0x1080069

    goto :goto_6

    .line 4903
    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_13
        :pswitch_b
        :pswitch_b
        :pswitch_f
        :pswitch_7
    .end packed-switch
.end method

.method public static final getPresencePrecedence(I)I
    .registers 1
    .param p0, "status"    # I

    .prologue
    .line 4928
    return p0
.end method
