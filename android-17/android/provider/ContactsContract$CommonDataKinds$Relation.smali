.class public final Landroid/provider/ContactsContract$CommonDataKinds$Relation;
.super Ljava/lang/Object;
.source "ContactsContract.java"

# interfaces
.implements Landroid/provider/ContactsContract$CommonDataKinds$CommonColumns;
.implements Landroid/provider/ContactsContract$DataColumnsWithJoins;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract$CommonDataKinds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Relation"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/relation"

.field public static final NAME:Ljava/lang/String; = "data1"

.field public static final TYPE_ASSISTANT:I = 0x1

.field public static final TYPE_BROTHER:I = 0x2

.field public static final TYPE_CHILD:I = 0x3

.field public static final TYPE_DOMESTIC_PARTNER:I = 0x4

.field public static final TYPE_FATHER:I = 0x5

.field public static final TYPE_FRIEND:I = 0x6

.field public static final TYPE_MANAGER:I = 0x7

.field public static final TYPE_MOTHER:I = 0x8

.field public static final TYPE_PARENT:I = 0x9

.field public static final TYPE_PARTNER:I = 0xa

.field public static final TYPE_REFERRED_BY:I = 0xb

.field public static final TYPE_RELATIVE:I = 0xc

.field public static final TYPE_SISTER:I = 0xd

.field public static final TYPE_SPOUSE:I = 0xe


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 6245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 5
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "type"    # I
    .param p2, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 6304
    if-nez p1, :cond_9

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 6308
    .end local p2    # "label":Ljava/lang/CharSequence;
    :goto_8
    return-object p2

    .line 6307
    .restart local p2    # "label":Ljava/lang/CharSequence;
    :cond_9
    invoke-static {p1}, Landroid/provider/ContactsContract$CommonDataKinds$Relation;->getTypeLabelResource(I)I

    move-result v0

    .line 6308
    .local v0, "labelRes":I
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_8
.end method

.method public static final getTypeLabelResource(I)I
    .registers 2
    .param p0, "type"    # I

    .prologue
    .line 6276
    packed-switch p0, :pswitch_data_40

    .line 6293
    const v0, 0x10402bc

    :goto_6
    return v0

    .line 6277
    :pswitch_7
    const v0, 0x10402be

    goto :goto_6

    .line 6278
    :pswitch_b
    const v0, 0x10402bf

    goto :goto_6

    .line 6279
    :pswitch_f
    const v0, 0x10402c0

    goto :goto_6

    .line 6281
    :pswitch_13
    const v0, 0x10402c1

    goto :goto_6

    .line 6282
    :pswitch_17
    const v0, 0x10402c2

    goto :goto_6

    .line 6283
    :pswitch_1b
    const v0, 0x10402c3

    goto :goto_6

    .line 6284
    :pswitch_1f
    const v0, 0x10402c4

    goto :goto_6

    .line 6285
    :pswitch_23
    const v0, 0x10402c5

    goto :goto_6

    .line 6286
    :pswitch_27
    const v0, 0x10402c6

    goto :goto_6

    .line 6287
    :pswitch_2b
    const v0, 0x10402c7

    goto :goto_6

    .line 6289
    :pswitch_2f
    const v0, 0x10402c8

    goto :goto_6

    .line 6290
    :pswitch_33
    const v0, 0x10402c9

    goto :goto_6

    .line 6291
    :pswitch_37
    const v0, 0x10402ca

    goto :goto_6

    .line 6292
    :pswitch_3b
    const v0, 0x10402cb

    goto :goto_6

    .line 6276
    nop

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_7
        :pswitch_b
        :pswitch_f
        :pswitch_13
        :pswitch_17
        :pswitch_1b
        :pswitch_1f
        :pswitch_23
        :pswitch_27
        :pswitch_2b
        :pswitch_2f
        :pswitch_33
        :pswitch_37
        :pswitch_3b
    .end packed-switch
.end method
