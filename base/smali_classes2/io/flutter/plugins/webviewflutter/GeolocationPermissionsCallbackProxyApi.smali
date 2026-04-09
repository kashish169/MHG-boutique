.class public Lio/flutter/plugins/webviewflutter/GeolocationPermissionsCallbackProxyApi;
.super Lio/flutter/plugins/webviewflutter/PigeonApiGeolocationPermissionsCallback;
.source "GeolocationPermissionsCallbackProxyApi.java"


# direct methods
.method public constructor <init>(Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lio/flutter/plugins/webviewflutter/PigeonApiGeolocationPermissionsCallback;-><init>(Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;)V

    return-void
.end method


# virtual methods
.method public invoke(Landroid/webkit/GeolocationPermissions$Callback;Ljava/lang/String;ZZ)V
    .locals 0

    .line 29
    invoke-interface {p1, p2, p3, p4}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    return-void
.end method
