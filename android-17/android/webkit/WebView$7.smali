.class Landroid/webkit/WebView$7;
.super Ljava/lang/Object;
.source "WebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/WebView;->restorePicture(Landroid/os/Bundle;Ljava/io/File;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebView;

.field final synthetic val$copy:Landroid/os/Bundle;

.field final synthetic val$in:Ljava/io/FileInputStream;


# direct methods
.method constructor <init>(Landroid/webkit/WebView;Ljava/io/FileInputStream;Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 1915
    iput-object p1, p0, Landroid/webkit/WebView$7;->this$0:Landroid/webkit/WebView;

    iput-object p2, p0, Landroid/webkit/WebView$7;->val$in:Ljava/io/FileInputStream;

    iput-object p3, p0, Landroid/webkit/WebView$7;->val$copy:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1918
    :try_start_0
    iget-object v1, p0, Landroid/webkit/WebView$7;->val$in:Ljava/io/FileInputStream;

    invoke-static {v1}, Landroid/graphics/Picture;->createFromStream(Ljava/io/InputStream;)Landroid/graphics/Picture;

    move-result-object v0

    .line 1919
    .local v0, "p":Landroid/graphics/Picture;
    if-eqz v0, :cond_14

    .line 1922
    iget-object v1, p0, Landroid/webkit/WebView$7;->this$0:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    new-instance v2, Landroid/webkit/WebView$7$1;

    invoke-direct {v2, p0, v0}, Landroid/webkit/WebView$7$1;-><init>(Landroid/webkit/WebView$7;Landroid/graphics/Picture;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_1a

    .line 1930
    :cond_14
    :try_start_14
    iget-object v1, p0, Landroid/webkit/WebView$7;->val$in:Ljava/io/FileInputStream;

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_19} :catch_23

    .line 1935
    :goto_19
    return-void

    .line 1929
    .end local v0    # "p":Landroid/graphics/Picture;
    :catchall_1a
    move-exception v1

    .line 1930
    :try_start_1b
    iget-object v2, p0, Landroid/webkit/WebView$7;->val$in:Ljava/io/FileInputStream;

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_20} :catch_21

    .line 1933
    :goto_20
    throw v1

    .line 1931
    :catch_21
    move-exception v2

    goto :goto_20

    .restart local v0    # "p":Landroid/graphics/Picture;
    :catch_23
    move-exception v1

    goto :goto_19
.end method
