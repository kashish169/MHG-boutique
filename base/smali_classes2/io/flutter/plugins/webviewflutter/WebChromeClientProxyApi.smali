.class public Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi;
.super Lio/flutter/plugins/webviewflutter/PigeonApiWebChromeClient;
.source "WebChromeClientProxyApi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$WebChromeClientImpl;,
        Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$SecureWebChromeClient;
    }
.end annotation


# direct methods
.method public constructor <init>(Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;)V
    .locals 0

    .line 327
    invoke-direct {p0, p1}, Lio/flutter/plugins/webviewflutter/PigeonApiWebChromeClient;-><init>(Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getPigeonRegistrar()Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;
    .locals 0

    .line 33
    invoke-virtual {p0}, Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi;->getPigeonRegistrar()Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;

    move-result-object p0

    return-object p0
.end method

.method public getPigeonRegistrar()Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;
    .locals 0

    .line 369
    invoke-super {p0}, Lio/flutter/plugins/webviewflutter/PigeonApiWebChromeClient;->getPigeonRegistrar()Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;

    move-result-object p0

    check-cast p0, Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;

    return-object p0
.end method

.method public pigeon_defaultConstructor()Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$WebChromeClientImpl;
    .locals 1

    .line 333
    new-instance v0, Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$WebChromeClientImpl;

    invoke-direct {v0, p0}, Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$WebChromeClientImpl;-><init>(Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi;)V

    return-object v0
.end method

.method public setSynchronousReturnValueForOnConsoleMessage(Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$WebChromeClientImpl;Z)V
    .locals 0

    .line 345
    invoke-virtual {p1, p2}, Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$WebChromeClientImpl;->setReturnValueForOnConsoleMessage(Z)V

    return-void
.end method

.method public setSynchronousReturnValueForOnJsAlert(Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$WebChromeClientImpl;Z)V
    .locals 0

    .line 351
    invoke-virtual {p1, p2}, Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$WebChromeClientImpl;->setReturnValueForOnJsAlert(Z)V

    return-void
.end method

.method public setSynchronousReturnValueForOnJsConfirm(Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$WebChromeClientImpl;Z)V
    .locals 0

    .line 357
    invoke-virtual {p1, p2}, Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$WebChromeClientImpl;->setReturnValueForOnJsConfirm(Z)V

    return-void
.end method

.method public setSynchronousReturnValueForOnJsPrompt(Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$WebChromeClientImpl;Z)V
    .locals 0

    .line 363
    invoke-virtual {p1, p2}, Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$WebChromeClientImpl;->setReturnValueForOnJsPrompt(Z)V

    return-void
.end method

.method public setSynchronousReturnValueForOnShowFileChooser(Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$WebChromeClientImpl;Z)V
    .locals 0

    .line 339
    invoke-virtual {p1, p2}, Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$WebChromeClientImpl;->setReturnValueForOnShowFileChooser(Z)V

    return-void
.end method
