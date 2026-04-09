.class public Lio/flutter/plugins/webviewflutter/WebResourceRequestProxyApi;
.super Lio/flutter/plugins/webviewflutter/PigeonApiWebResourceRequest;
.source "WebResourceRequestProxyApi.java"


# direct methods
.method public constructor <init>(Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lio/flutter/plugins/webviewflutter/PigeonApiWebResourceRequest;-><init>(Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getPigeonRegistrar()Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;
    .locals 0

    .line 14
    invoke-virtual {p0}, Lio/flutter/plugins/webviewflutter/WebResourceRequestProxyApi;->getPigeonRegistrar()Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;

    move-result-object p0

    return-object p0
.end method

.method public getPigeonRegistrar()Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;
    .locals 0

    .line 66
    invoke-super {p0}, Lio/flutter/plugins/webviewflutter/PigeonApiWebResourceRequest;->getPigeonRegistrar()Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;

    move-result-object p0

    check-cast p0, Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;

    return-object p0
.end method

.method public hasGesture(Landroid/webkit/WebResourceRequest;)Z
    .locals 0

    .line 44
    invoke-interface {p1}, Landroid/webkit/WebResourceRequest;->hasGesture()Z

    move-result p0

    return p0
.end method

.method public isForMainFrame(Landroid/webkit/WebResourceRequest;)Z
    .locals 0

    .line 28
    invoke-interface {p1}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result p0

    return p0
.end method

.method public isRedirect(Landroid/webkit/WebResourceRequest;)Ljava/lang/Boolean;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lio/flutter/plugins/webviewflutter/WebResourceRequestProxyApi;->getPigeonRegistrar()Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;

    move-result-object p0

    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;->sdkIsAtLeast(I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 35
    invoke-interface {p1}, Landroid/webkit/WebResourceRequest;->isRedirect()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public method(Landroid/webkit/WebResourceRequest;)Ljava/lang/String;
    .locals 0

    .line 50
    invoke-interface {p1}, Landroid/webkit/WebResourceRequest;->getMethod()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public requestHeaders(Landroid/webkit/WebResourceRequest;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebResourceRequest;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 56
    invoke-interface {p1}, Landroid/webkit/WebResourceRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object p0

    if-nez p0, :cond_0

    .line 57
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    return-object p0

    .line 59
    :cond_0
    invoke-interface {p1}, Landroid/webkit/WebResourceRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public url(Landroid/webkit/WebResourceRequest;)Ljava/lang/String;
    .locals 0

    .line 22
    invoke-interface {p1}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
