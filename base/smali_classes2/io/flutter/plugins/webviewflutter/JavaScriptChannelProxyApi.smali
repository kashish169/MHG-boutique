.class public Lio/flutter/plugins/webviewflutter/JavaScriptChannelProxyApi;
.super Lio/flutter/plugins/webviewflutter/PigeonApiJavaScriptChannel;
.source "JavaScriptChannelProxyApi.java"


# direct methods
.method public constructor <init>(Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lio/flutter/plugins/webviewflutter/PigeonApiJavaScriptChannel;-><init>(Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getPigeonRegistrar()Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;
    .locals 0

    .line 14
    invoke-virtual {p0}, Lio/flutter/plugins/webviewflutter/JavaScriptChannelProxyApi;->getPigeonRegistrar()Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;

    move-result-object p0

    return-object p0
.end method

.method public getPigeonRegistrar()Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;
    .locals 0

    .line 30
    invoke-super {p0}, Lio/flutter/plugins/webviewflutter/PigeonApiJavaScriptChannel;->getPigeonRegistrar()Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;

    move-result-object p0

    check-cast p0, Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;

    return-object p0
.end method

.method public pigeon_defaultConstructor(Ljava/lang/String;)Lio/flutter/plugins/webviewflutter/JavaScriptChannel;
    .locals 1

    .line 24
    new-instance v0, Lio/flutter/plugins/webviewflutter/JavaScriptChannel;

    invoke-direct {v0, p1, p0}, Lio/flutter/plugins/webviewflutter/JavaScriptChannel;-><init>(Ljava/lang/String;Lio/flutter/plugins/webviewflutter/JavaScriptChannelProxyApi;)V

    return-object v0
.end method
