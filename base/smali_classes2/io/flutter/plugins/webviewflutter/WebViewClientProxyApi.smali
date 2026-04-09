.class public Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi;
.super Lio/flutter/plugins/webviewflutter/PigeonApiWebViewClient;
.source "WebViewClientProxyApi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl;,
        Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientCompatImpl;
    }
.end annotation


# direct methods
.method public constructor <init>(Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;)V
    .locals 0

    .line 254
    invoke-direct {p0, p1}, Lio/flutter/plugins/webviewflutter/PigeonApiWebViewClient;-><init>(Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getPigeonRegistrar()Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;
    .locals 0

    .line 26
    invoke-virtual {p0}, Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi;->getPigeonRegistrar()Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;

    move-result-object p0

    return-object p0
.end method

.method public getPigeonRegistrar()Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;
    .locals 0

    .line 292
    invoke-super {p0}, Lio/flutter/plugins/webviewflutter/PigeonApiWebViewClient;->getPigeonRegistrar()Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;

    move-result-object p0

    check-cast p0, Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;

    return-object p0
.end method

.method public pigeon_defaultConstructor()Landroid/webkit/WebViewClient;
    .locals 2

    .line 268
    invoke-virtual {p0}, Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi;->getPigeonRegistrar()Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;

    move-result-object v0

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;->sdkIsAtLeast(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    new-instance v0, Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl;

    invoke-direct {v0, p0}, Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl;-><init>(Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi;)V

    return-object v0

    .line 271
    :cond_0
    new-instance v0, Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientCompatImpl;

    invoke-direct {v0, p0}, Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientCompatImpl;-><init>(Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi;)V

    return-object v0
.end method

.method public setSynchronousReturnValueForShouldOverrideUrlLoading(Landroid/webkit/WebViewClient;Z)V
    .locals 1

    .line 278
    instance-of v0, p1, Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientCompatImpl;

    if-eqz v0, :cond_0

    .line 279
    check-cast p1, Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientCompatImpl;

    invoke-virtual {p1, p2}, Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientCompatImpl;->setReturnValueForShouldOverrideUrlLoading(Z)V

    goto :goto_0

    .line 280
    :cond_0
    invoke-virtual {p0}, Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi;->getPigeonRegistrar()Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;

    move-result-object p0

    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;->sdkIsAtLeast(I)Z

    move-result p0

    if-eqz p0, :cond_1

    instance-of p0, p1, Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl;

    if-eqz p0, :cond_1

    .line 282
    check-cast p1, Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl;

    invoke-virtual {p1, p2}, Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl;->setReturnValueForShouldOverrideUrlLoading(Z)V

    :goto_0
    return-void

    .line 284
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This WebViewClient doesn\'t support setting the returnValueForShouldOverrideUrlLoading."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
