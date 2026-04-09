.class public Lio/flutter/plugins/webviewflutter/WebStorageProxyApi;
.super Lio/flutter/plugins/webviewflutter/PigeonApiWebStorage;
.source "WebStorageProxyApi.java"


# direct methods
.method public constructor <init>(Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lio/flutter/plugins/webviewflutter/PigeonApiWebStorage;-><init>(Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;)V

    return-void
.end method


# virtual methods
.method public deleteAllData(Landroid/webkit/WebStorage;)V
    .locals 0

    .line 29
    invoke-virtual {p1}, Landroid/webkit/WebStorage;->deleteAllData()V

    return-void
.end method

.method public instance()Landroid/webkit/WebStorage;
    .locals 0

    .line 24
    invoke-static {}, Landroid/webkit/WebStorage;->getInstance()Landroid/webkit/WebStorage;

    move-result-object p0

    return-object p0
.end method
