.class Lcom/android/server/sip/SipWakeupTimer$MyEventComparator;
.super Ljava/lang/Object;
.source "SipWakeupTimer.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sip/SipWakeupTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyEventComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/server/sip/SipWakeupTimer$MyEvent;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/sip/SipWakeupTimer$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/server/sip/SipWakeupTimer$1;

    .prologue
    .line 329
    invoke-direct {p0}, Lcom/android/server/sip/SipWakeupTimer$MyEventComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/sip/SipWakeupTimer$MyEvent;Lcom/android/server/sip/SipWakeupTimer$MyEvent;)I
    .registers 6
    .param p1, "e1"    # Lcom/android/server/sip/SipWakeupTimer$MyEvent;
    .param p2, "e2"    # Lcom/android/server/sip/SipWakeupTimer$MyEvent;

    .prologue
    .line 331
    if-ne p1, p2, :cond_4

    const/4 v0, 0x0

    .line 334
    :cond_3
    :goto_3
    return v0

    .line 332
    :cond_4
    iget v1, p1, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mMaxPeriod:I

    iget v2, p2, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mMaxPeriod:I

    sub-int v0, v1, v2

    .line 333
    .local v0, "diff":I
    if-nez v0, :cond_3

    const/4 v0, -0x1

    goto :goto_3
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 329
    check-cast p1, Lcom/android/server/sip/SipWakeupTimer$MyEvent;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/android/server/sip/SipWakeupTimer$MyEvent;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/sip/SipWakeupTimer$MyEventComparator;->compare(Lcom/android/server/sip/SipWakeupTimer$MyEvent;Lcom/android/server/sip/SipWakeupTimer$MyEvent;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    .line 338
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method
