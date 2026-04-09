.class public Lio/flutter/plugins/webviewflutter/WebViewProxyApi$WebViewPlatformView;
.super Landroid/webkit/WebView;
.source "WebViewProxyApi.java"

# interfaces
.implements Lio/flutter/plugin/platform/PlatformView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/webviewflutter/WebViewProxyApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WebViewPlatformView"
.end annotation


# instance fields
.field private final api:Lio/flutter/plugins/webviewflutter/WebViewProxyApi;

.field private currentWebChromeClient:Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$SecureWebChromeClient;

.field private currentWebViewClient:Landroid/webkit/WebViewClient;


# direct methods
.method public static synthetic $r8$lambda$zmW9c_6EkztzCc6x6fMcHU0hBcE(Lio/flutter/plugins/webviewflutter/WebViewProxyApi$WebViewPlatformView;IIII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lio/flutter/plugins/webviewflutter/WebViewProxyApi$WebViewPlatformView;->lambda$onScrollChanged$1(IIII)V

    return-void
.end method

.method constructor <init>(Lio/flutter/plugins/webviewflutter/WebViewProxyApi;)V
    .locals 1

    .line 43
    invoke-virtual {p1}, Lio/flutter/plugins/webviewflutter/WebViewProxyApi;->getPigeonRegistrar()Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 44
    iput-object p1, p0, Lio/flutter/plugins/webviewflutter/WebViewProxyApi$WebViewPlatformView;->api:Lio/flutter/plugins/webviewflutter/WebViewProxyApi;

    .line 45
    new-instance p1, Landroid/webkit/WebViewClient;

    invoke-direct {p1}, Landroid/webkit/WebViewClient;-><init>()V

    iput-object p1, p0, Lio/flutter/plugins/webviewflutter/WebViewProxyApi$WebViewPlatformView;->currentWebViewClient:Landroid/webkit/WebViewClient;

    .line 46
    new-instance p1, Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$SecureWebChromeClient;

    invoke-direct {p1}, Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$SecureWebChromeClient;-><init>()V

    iput-object p1, p0, Lio/flutter/plugins/webviewflutter/WebViewProxyApi$WebViewPlatformView;->currentWebChromeClient:Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$SecureWebChromeClient;

    .line 48
    iget-object p1, p0, Lio/flutter/plugins/webviewflutter/WebViewProxyApi$WebViewPlatformView;->currentWebViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {p0, p1}, Lio/flutter/plugins/webviewflutter/WebViewProxyApi$WebViewPlatformView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 49
    iget-object p1, p0, Lio/flutter/plugins/webviewflutter/WebViewProxyApi$WebViewPlatformView;->currentWebChromeClient:Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$SecureWebChromeClient;

    invoke-virtual {p0, p1}, Lio/flutter/plugins/webviewflutter/WebViewProxyApi$WebViewPlatformView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method

.method static synthetic lambda$onScrollChanged$0(Lkotlin/Result;)Lkotlin/Unit;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$onScrollChanged$1(IIII)V
    .locals 11

    .line 122
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/WebViewProxyApi$WebViewPlatformView;->api:Lio/flutter/plugins/webviewflutter/WebViewProxyApi;

    int-to-long v2, p1

    int-to-long v4, p2

    int-to-long v6, p3

    int-to-long v8, p4

    new-instance v10, Lio/flutter/plugins/webviewflutter/WebViewProxyApi$WebViewPlatformView$$ExternalSyntheticLambda1;

    invoke-direct {v10}, Lio/flutter/plugins/webviewflutter/WebViewProxyApi$WebViewPlatformView$$ExternalSyntheticLambda1;-><init>()V

    move-object v1, p0

    invoke-virtual/range {v0 .. v10}, Lio/flutter/plugins/webviewflutter/WebViewProxyApi;->onScrollChanged(Landroid/webkit/WebView;JJJJLkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private tryFindFlutterView()Lio/flutter/embedding/android/FlutterView;
    .locals 1

    .line 80
    :cond_0
    invoke-interface {p0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 81
    invoke-interface {p0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .line 82
    instance-of v0, p0, Lio/flutter/embedding/android/FlutterView;

    if-eqz v0, :cond_0

    .line 83
    check-cast p0, Lio/flutter/embedding/android/FlutterView;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public dispose()V
    .locals 0

    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public getWebChromeClient()Landroid/webkit/WebChromeClient;
    .locals 0

    .line 113
    iget-object p0, p0, Lio/flutter/plugins/webviewflutter/WebViewProxyApi$WebViewPlatformView;->currentWebChromeClient:Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$SecureWebChromeClient;

    return-object p0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 67
    invoke-super {p0}, Landroid/webkit/WebView;->onAttachedToWindow()V

    .line 68
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/WebViewProxyApi$WebViewPlatformView;->api:Lio/flutter/plugins/webviewflutter/WebViewProxyApi;

    invoke-virtual {v0}, Lio/flutter/plugins/webviewflutter/WebViewProxyApi;->getPigeonRegistrar()Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;

    move-result-object v0

    const/16 v1, 0x1a

    invoke-virtual {v0, v1}, Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;->sdkIsAtLeast(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-direct {p0}, Lio/flutter/plugins/webviewflutter/WebViewProxyApi$WebViewPlatformView;->tryFindFlutterView()Lio/flutter/embedding/android/FlutterView;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 71
    invoke-virtual {p0, v0}, Lio/flutter/embedding/android/FlutterView;->setImportantForAutofill(I)V

    :cond_0
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 8

    .line 118
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    .line 119
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/WebViewProxyApi$WebViewPlatformView;->api:Lio/flutter/plugins/webviewflutter/WebViewProxyApi;

    invoke-virtual {v0}, Lio/flutter/plugins/webviewflutter/WebViewProxyApi;->getPigeonRegistrar()Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;

    move-result-object v0

    new-instance v7, Lio/flutter/plugins/webviewflutter/WebViewProxyApi$WebViewPlatformView$$ExternalSyntheticLambda0;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lio/flutter/plugins/webviewflutter/WebViewProxyApi$WebViewPlatformView$$ExternalSyntheticLambda0;-><init>(Lio/flutter/plugins/webviewflutter/WebViewProxyApi$WebViewPlatformView;IIII)V

    .line 120
    invoke-virtual {v0, v7}, Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setWebChromeClient(Landroid/webkit/WebChromeClient;)V
    .locals 1

    .line 99
    invoke-super {p0, p1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 100
    instance-of v0, p1, Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$SecureWebChromeClient;

    if-eqz v0, :cond_0

    .line 103
    check-cast p1, Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$SecureWebChromeClient;

    iput-object p1, p0, Lio/flutter/plugins/webviewflutter/WebViewProxyApi$WebViewPlatformView;->currentWebChromeClient:Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$SecureWebChromeClient;

    .line 104
    iget-object p0, p0, Lio/flutter/plugins/webviewflutter/WebViewProxyApi$WebViewPlatformView;->currentWebViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {p1, p0}, Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$SecureWebChromeClient;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void

    .line 101
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "Client must be a SecureWebChromeClient."

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method public setWebViewClient(Landroid/webkit/WebViewClient;)V
    .locals 0

    .line 92
    invoke-super {p0, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 93
    iput-object p1, p0, Lio/flutter/plugins/webviewflutter/WebViewProxyApi$WebViewPlatformView;->currentWebViewClient:Landroid/webkit/WebViewClient;

    .line 94
    iget-object p0, p0, Lio/flutter/plugins/webviewflutter/WebViewProxyApi$WebViewPlatformView;->currentWebChromeClient:Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$SecureWebChromeClient;

    invoke-virtual {p0, p1}, Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$SecureWebChromeClient;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method
