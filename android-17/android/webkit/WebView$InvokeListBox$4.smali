.class Landroid/webkit/WebView$InvokeListBox$4;
.super Ljava/lang/Object;
.source "WebView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/WebView$InvokeListBox;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/webkit/WebView$InvokeListBox;


# direct methods
.method constructor <init>(Landroid/webkit/WebView$InvokeListBox;)V
    .registers 2

    .prologue
    .line 9171
    iput-object p1, p0, Landroid/webkit/WebView$InvokeListBox$4;->this$1:Landroid/webkit/WebView$InvokeListBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 9173
    iget-object v0, p0, Landroid/webkit/WebView$InvokeListBox$4;->this$1:Landroid/webkit/WebView$InvokeListBox;

    iget-object v0, v0, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    # getter for: Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v0}, Landroid/webkit/WebView;->access$700(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore;

    move-result-object v0

    const/16 v1, 0x7c

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 9175
    iget-object v0, p0, Landroid/webkit/WebView$InvokeListBox$4;->this$1:Landroid/webkit/WebView$InvokeListBox;

    iget-object v0, v0, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    const/4 v1, 0x0

    # setter for: Landroid/webkit/WebView;->mListBoxDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Landroid/webkit/WebView;->access$11102(Landroid/webkit/WebView;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 9176
    return-void
.end method
