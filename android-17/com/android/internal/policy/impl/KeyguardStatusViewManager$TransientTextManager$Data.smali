.class Lcom/android/internal/policy/impl/KeyguardStatusViewManager$TransientTextManager$Data;
.super Ljava/lang/Object;
.source "KeyguardStatusViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/KeyguardStatusViewManager$TransientTextManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Data"
.end annotation


# instance fields
.field final icon:I

.field final text:Ljava/lang/CharSequence;

.field final synthetic this$1:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$TransientTextManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/KeyguardStatusViewManager$TransientTextManager;Ljava/lang/CharSequence;I)V
    .registers 4
    .param p2, "t"    # Ljava/lang/CharSequence;
    .param p3, "i"    # I

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$TransientTextManager$Data;->this$1:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$TransientTextManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p2, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$TransientTextManager$Data;->text:Ljava/lang/CharSequence;

    .line 116
    iput p3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$TransientTextManager$Data;->icon:I

    .line 117
    return-void
.end method
