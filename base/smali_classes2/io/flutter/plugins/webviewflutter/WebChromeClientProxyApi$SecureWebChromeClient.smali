.class public Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$SecureWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "WebChromeClientProxyApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SecureWebChromeClient"
.end annotation


# instance fields
.field webViewClient:Landroid/webkit/WebViewClient;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 241
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method onCreateWindow(Landroid/webkit/WebView;Landroid/os/Message;Landroid/webkit/WebView;)Z
    .locals 1

    .line 275
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$SecureWebChromeClient;->webViewClient:Landroid/webkit/WebViewClient;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 279
    :cond_0
    new-instance v0, Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$SecureWebChromeClient$1;

    invoke-direct {v0, p0, p1}, Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$SecureWebChromeClient$1;-><init>(Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$SecureWebChromeClient;Landroid/webkit/WebView;)V

    if-nez p3, :cond_1

    .line 303
    new-instance p3, Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {p3, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 305
    :cond_1
    invoke-virtual {p3, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 307
    iget-object p0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/webkit/WebView$WebViewTransport;

    .line 308
    invoke-virtual {p0, p3}, Landroid/webkit/WebView$WebViewTransport;->setWebView(Landroid/webkit/WebView;)V

    .line 309
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    const/4 p0, 0x1

    return p0
.end method

.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .locals 0

    .line 250
    new-instance p2, Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p1, p4, p2}, Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$SecureWebChromeClient;->onCreateWindow(Landroid/webkit/WebView;Landroid/os/Message;Landroid/webkit/WebView;)Z

    move-result p0

    return p0
.end method

.method public setWebViewClient(Landroid/webkit/WebViewClient;)V
    .locals 0

    .line 321
    iput-object p1, p0, Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$SecureWebChromeClient;->webViewClient:Landroid/webkit/WebViewClient;

    return-void
.end method
