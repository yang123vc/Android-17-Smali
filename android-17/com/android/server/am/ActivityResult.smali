.class Lcom/android/server/am/ActivityResult;
.super Landroid/app/ResultInfo;
.source "ActivityResult.java"


# instance fields
.field final mFrom:Lcom/android/server/am/ActivityRecord;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V
    .registers 6
    .param p1, "from"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "resultWho"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .param p4, "resultCode"    # I
    .param p5, "data"    # Landroid/content/Intent;

    .prologue
    .line 31
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/app/ResultInfo;-><init>(Ljava/lang/String;IILandroid/content/Intent;)V

    .line 32
    iput-object p1, p0, Lcom/android/server/am/ActivityResult;->mFrom:Lcom/android/server/am/ActivityRecord;

    .line 33
    return-void
.end method
