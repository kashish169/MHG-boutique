.class public Lio/flutter/plugins/webviewflutter/WebViewPointProxyApi;
.super Lio/flutter/plugins/webviewflutter/PigeonApiWebViewPoint;
.source "WebViewPointProxyApi.java"


# direct methods
.method public constructor <init>(Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lio/flutter/plugins/webviewflutter/PigeonApiWebViewPoint;-><init>(Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;)V

    return-void
.end method


# virtual methods
.method public x(Lio/flutter/plugins/webviewflutter/WebViewPoint;)J
    .locals 0

    .line 16
    invoke-virtual {p1}, Lio/flutter/plugins/webviewflutter/WebViewPoint;->getX()J

    move-result-wide p0

    return-wide p0
.end method

.method public y(Lio/flutter/plugins/webviewflutter/WebViewPoint;)J
    .locals 0

    .line 21
    invoke-virtual {p1}, Lio/flutter/plugins/webviewflutter/WebViewPoint;->getY()J

    move-result-wide p0

    return-wide p0
.end method
