.class Lcom/android/i18n/phonenumbers/PhoneNumberUtil$1;
.super Ljava/lang/Object;
.source "PhoneNumberUtil.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->findNumbers(Ljava/lang/CharSequence;Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;J)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/android/i18n/phonenumbers/PhoneNumberMatch;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

.field final synthetic val$defaultRegion:Ljava/lang/String;

.field final synthetic val$leniency:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;

.field final synthetic val$maxTries:J

.field final synthetic val$text:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/android/i18n/phonenumbers/PhoneNumberUtil;Ljava/lang/CharSequence;Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;J)V
    .registers 7

    .prologue
    .line 2413
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$1;->this$0:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    iput-object p2, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$1;->val$text:Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$1;->val$defaultRegion:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$1;->val$leniency:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    iput-wide p5, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$1;->val$maxTries:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/android/i18n/phonenumbers/PhoneNumberMatch;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2415
    new-instance v0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;

    iget-object v1, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$1;->this$0:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    iget-object v2, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$1;->val$text:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$1;->val$defaultRegion:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$1;->val$leniency:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    iget-wide v5, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$1;->val$maxTries:J

    invoke-direct/range {v0 .. v6}, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;-><init>(Lcom/android/i18n/phonenumbers/PhoneNumberUtil;Ljava/lang/CharSequence;Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;J)V

    return-object v0
.end method
