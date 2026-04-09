.class public Lio/flutter/plugins/webviewflutter/CustomViewCallbackProxyApi;
.super Lio/flutter/plugins/webviewflutter/PigeonApiCustomViewCallback;
.source "CustomViewCallbackProxyApi.java"


# direct methods
.method public constructor <init>(Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lio/flutter/plugins/webviewflutter/PigeonApiCustomViewCallback;-><init>(Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;)V

    return-void
.end method


# virtual methods
.method public onCustomViewHidden(Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 0

    .line 24
    invoke-interface {p1}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    return-void
.end method
