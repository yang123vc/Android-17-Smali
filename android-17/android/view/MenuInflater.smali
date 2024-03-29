.class public Landroid/view/MenuInflater;
.super Ljava/lang/Object;
.source "MenuInflater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/MenuInflater$MenuState;,
        Landroid/view/MenuInflater$InflatedOnMenuItemClickListener;
    }
.end annotation


# static fields
.field private static final ACTION_PROVIDER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final ACTION_VIEW_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = "MenuInflater"

.field private static final NO_ID:I = 0x0

.field private static final XML_GROUP:Ljava/lang/String; = "group"

.field private static final XML_ITEM:Ljava/lang/String; = "item"

.field private static final XML_MENU:Ljava/lang/String; = "menu"


# instance fields
.field private final mActionProviderConstructorArguments:[Ljava/lang/Object;

.field private final mActionViewConstructorArguments:[Ljava/lang/Object;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 59
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    sput-object v0, Landroid/view/MenuInflater;->ACTION_VIEW_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    .line 61
    sget-object v0, Landroid/view/MenuInflater;->ACTION_VIEW_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    sput-object v0, Landroid/view/MenuInflater;->ACTION_PROVIDER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Landroid/view/MenuInflater;->mContext:Landroid/content/Context;

    .line 76
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Landroid/view/MenuInflater;->mActionViewConstructorArguments:[Ljava/lang/Object;

    .line 77
    iget-object v0, p0, Landroid/view/MenuInflater;->mActionViewConstructorArguments:[Ljava/lang/Object;

    iput-object v0, p0, Landroid/view/MenuInflater;->mActionProviderConstructorArguments:[Ljava/lang/Object;

    .line 78
    return-void
.end method

.method static synthetic access$100(Landroid/view/MenuInflater;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Landroid/view/MenuInflater;

    .prologue
    .line 45
    iget-object v0, p0, Landroid/view/MenuInflater;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200()[Ljava/lang/Class;
    .registers 1

    .prologue
    .line 45
    sget-object v0, Landroid/view/MenuInflater;->ACTION_PROVIDER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$300(Landroid/view/MenuInflater;)[Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Landroid/view/MenuInflater;

    .prologue
    .line 45
    iget-object v0, p0, Landroid/view/MenuInflater;->mActionProviderConstructorArguments:[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400()[Ljava/lang/Class;
    .registers 1

    .prologue
    .line 45
    sget-object v0, Landroid/view/MenuInflater;->ACTION_VIEW_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$500(Landroid/view/MenuInflater;)[Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Landroid/view/MenuInflater;

    .prologue
    .line 45
    iget-object v0, p0, Landroid/view/MenuInflater;->mActionViewConstructorArguments:[Ljava/lang/Object;

    return-object v0
.end method

.method private parseMenu(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V
    .registers 14
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "menu"    # Landroid/view/Menu;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    new-instance v2, Landroid/view/MenuInflater$MenuState;

    invoke-direct {v2, p0, p3}, Landroid/view/MenuInflater$MenuState;-><init>(Landroid/view/MenuInflater;Landroid/view/Menu;)V

    .line 113
    .local v2, "menuState":Landroid/view/MenuInflater$MenuState;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 115
    .local v0, "eventType":I
    const/4 v1, 0x0

    .line 116
    .local v1, "lookingForEndOfUnknownTag":Z
    const/4 v6, 0x0

    .line 120
    .local v6, "unknownTagName":Ljava/lang/String;
    :cond_b
    const/4 v7, 0x2

    if-ne v0, v7, :cond_43

    .line 121
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 122
    .local v5, "tagName":Ljava/lang/String;
    const-string/jumbo v7, "menu"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2a

    .line 124
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 133
    .end local v5    # "tagName":Ljava/lang/String;
    :goto_1f
    const/4 v3, 0x0

    .line 134
    .local v3, "reachedEndOfMenu":Z
    :goto_20
    if-nez v3, :cond_d4

    .line 135
    packed-switch v0, :pswitch_data_d6

    .line 185
    :cond_25
    :goto_25
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_20

    .line 128
    .end local v3    # "reachedEndOfMenu":Z
    .restart local v5    # "tagName":Ljava/lang/String;
    :cond_2a
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Expecting menu, got "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 130
    .end local v5    # "tagName":Ljava/lang/String;
    :cond_43
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 131
    const/4 v7, 0x1

    if-ne v0, v7, :cond_b

    goto :goto_1f

    .line 137
    .restart local v3    # "reachedEndOfMenu":Z
    :pswitch_4b
    if-nez v1, :cond_25

    .line 141
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 142
    .restart local v5    # "tagName":Ljava/lang/String;
    const-string v7, "group"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5d

    .line 143
    invoke-virtual {v2, p2}, Landroid/view/MenuInflater$MenuState;->readGroup(Landroid/util/AttributeSet;)V

    goto :goto_25

    .line 144
    :cond_5d
    const-string v7, "item"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_69

    .line 145
    invoke-virtual {v2, p2}, Landroid/view/MenuInflater$MenuState;->readItem(Landroid/util/AttributeSet;)V

    goto :goto_25

    .line 146
    :cond_69
    const-string/jumbo v7, "menu"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7a

    .line 148
    invoke-virtual {v2}, Landroid/view/MenuInflater$MenuState;->addSubMenuItem()Landroid/view/SubMenu;

    move-result-object v4

    .line 151
    .local v4, "subMenu":Landroid/view/SubMenu;
    invoke-direct {p0, p1, p2, v4}, Landroid/view/MenuInflater;->parseMenu(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V

    goto :goto_25

    .line 153
    .end local v4    # "subMenu":Landroid/view/SubMenu;
    :cond_7a
    const/4 v1, 0x1

    .line 154
    move-object v6, v5

    .line 156
    goto :goto_25

    .line 159
    .end local v5    # "tagName":Ljava/lang/String;
    :pswitch_7d
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 160
    .restart local v5    # "tagName":Ljava/lang/String;
    if-eqz v1, :cond_8c

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8c

    .line 161
    const/4 v1, 0x0

    .line 162
    const/4 v6, 0x0

    goto :goto_25

    .line 163
    :cond_8c
    const-string v7, "group"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_98

    .line 164
    invoke-virtual {v2}, Landroid/view/MenuInflater$MenuState;->resetGroup()V

    goto :goto_25

    .line 165
    :cond_98
    const-string v7, "item"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c0

    .line 168
    invoke-virtual {v2}, Landroid/view/MenuInflater$MenuState;->hasAddedItem()Z

    move-result v7

    if-nez v7, :cond_25

    .line 169
    # getter for: Landroid/view/MenuInflater$MenuState;->itemActionProvider:Landroid/view/ActionProvider;
    invoke-static {v2}, Landroid/view/MenuInflater$MenuState;->access$000(Landroid/view/MenuInflater$MenuState;)Landroid/view/ActionProvider;

    move-result-object v7

    if-eqz v7, :cond_bb

    # getter for: Landroid/view/MenuInflater$MenuState;->itemActionProvider:Landroid/view/ActionProvider;
    invoke-static {v2}, Landroid/view/MenuInflater$MenuState;->access$000(Landroid/view/MenuInflater$MenuState;)Landroid/view/ActionProvider;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ActionProvider;->hasSubMenu()Z

    move-result v7

    if-eqz v7, :cond_bb

    .line 171
    invoke-virtual {v2}, Landroid/view/MenuInflater$MenuState;->addSubMenuItem()Landroid/view/SubMenu;

    goto/16 :goto_25

    .line 173
    :cond_bb
    invoke-virtual {v2}, Landroid/view/MenuInflater$MenuState;->addItem()V

    goto/16 :goto_25

    .line 176
    :cond_c0
    const-string/jumbo v7, "menu"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_25

    .line 177
    const/4 v3, 0x1

    goto/16 :goto_25

    .line 182
    .end local v5    # "tagName":Ljava/lang/String;
    :pswitch_cc
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Unexpected end of document"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 187
    :cond_d4
    return-void

    .line 135
    nop

    :pswitch_data_d6
    .packed-switch 0x1
        :pswitch_cc
        :pswitch_4b
        :pswitch_7d
    .end packed-switch
.end method


# virtual methods
.method public inflate(ILandroid/view/Menu;)V
    .registers 8
    .param p1, "menuRes"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 90
    const/4 v2, 0x0

    .line 92
    .local v2, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_1
    iget-object v3, p0, Landroid/view/MenuInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 93
    invoke-static {v2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 95
    .local v0, "attrs":Landroid/util/AttributeSet;
    invoke-direct {p0, v2, v0, p2}, Landroid/view/MenuInflater;->parseMenu(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V
    :try_end_12
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_12} :catch_18
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_12} :catch_28
    .catchall {:try_start_1 .. :try_end_12} :catchall_21

    .line 101
    if-eqz v2, :cond_17

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    .line 103
    :cond_17
    return-void

    .line 96
    .end local v0    # "attrs":Landroid/util/AttributeSet;
    :catch_18
    move-exception v1

    .line 97
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_19
    new-instance v3, Landroid/view/InflateException;

    const-string v4, "Error inflating menu XML"

    invoke-direct {v3, v4, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_21
    .catchall {:try_start_19 .. :try_end_21} :catchall_21

    .line 101
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_21
    move-exception v3

    if-eqz v2, :cond_27

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_27
    throw v3

    .line 98
    :catch_28
    move-exception v1

    .line 99
    .local v1, "e":Ljava/io/IOException;
    :try_start_29
    new-instance v3, Landroid/view/InflateException;

    const-string v4, "Error inflating menu XML"

    invoke-direct {v3, v4, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_21
.end method
