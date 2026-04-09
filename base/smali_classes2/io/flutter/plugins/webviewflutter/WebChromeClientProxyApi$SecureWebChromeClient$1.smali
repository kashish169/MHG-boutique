.class Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$SecureWebChromeClient$1;
.super Landroid/webkit/WebViewClient;
.source "WebChromeClientProxyApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$SecureWebChromeClient;->onCreateWindow(Landroid/webkit/WebView;Landroid/os/Message;Landroid/webkit/WebView;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$SecureWebChromeClient;

.field final synthetic val$view:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$SecureWebChromeClient;Landroid/webkit/WebView;)V
    .locals 0

    .line 280
    iput-object p1, p0, Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$SecureWebChromeClient$1;->this$0:Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$SecureWebChromeClient;

    iput-object p2, p0, Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$SecureWebChromeClient$1;->val$view:Landroid/webkit/WebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 1

    .line 285
    iget-object p1, p0, Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$SecureWebChromeClient$1;->this$0:Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$SecureWebChromeClient;

    iget-object p1, p1, Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$SecureWebChromeClient;->webViewClient:Landroid/webkit/WebViewClient;

    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$SecureWebChromeClient$1;->val$view:Landroid/webkit/WebView;

    invoke-virtual {p1, v0, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 286
    iget-object p0, p0, Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$SecureWebChromeClient$1;->val$view:Landroid/webkit/WebView;

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    .line 295
    iget-object p1, p0, Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$SecureWebChromeClient$1;->this$0:Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$SecureWebChromeClient;

    iget-object p1, p1, Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$SecureWebChromeClient;->webViewClient:Landroid/webkit/WebViewClient;

    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$SecureWebChromeClient$1;->val$view:Landroid/webkit/WebView;

    invoke-virtual {p1, v0, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 296
    iget-object p0, p0, Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$SecureWebChromeClient$1;->val$view:Landroid/webkit/WebView;

    invoke-virtual {p0, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
