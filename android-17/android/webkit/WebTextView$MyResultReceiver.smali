.class Landroid/webkit/WebTextView$MyResultReceiver;
.super Landroid/os/ResultReceiver;
.source "WebTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyResultReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebTextView;


# direct methods
.method public constructor <init>(Landroid/webkit/WebTextView;Landroid/os/Handler;)V
    .registers 3
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 156
    iput-object p1, p0, Landroid/webkit/WebTextView$MyResultReceiver;->this$0:Landroid/webkit/WebTextView;

    .line 157
    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 158
    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .registers 4
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .prologue
    .line 147
    const/4 v0, 0x2

    if-ne p1, v0, :cond_14

    iget-object v0, p0, Landroid/webkit/WebTextView$MyResultReceiver;->this$0:Landroid/webkit/WebTextView;

    # getter for: Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Landroid/webkit/WebTextView;->access$000(Landroid/webkit/WebTextView;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 149
    iget-object v0, p0, Landroid/webkit/WebTextView$MyResultReceiver;->this$0:Landroid/webkit/WebTextView;

    # getter for: Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Landroid/webkit/WebTextView;->access$000(Landroid/webkit/WebTextView;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->revealSelection()V

    .line 151
    :cond_14
    return-void
.end method
