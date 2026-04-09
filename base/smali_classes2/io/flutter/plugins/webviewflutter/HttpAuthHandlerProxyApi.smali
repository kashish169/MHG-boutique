.class public Lio/flutter/plugins/webviewflutter/HttpAuthHandlerProxyApi;
.super Lio/flutter/plugins/webviewflutter/PigeonApiHttpAuthHandler;
.source "HttpAuthHandlerProxyApi.java"


# direct methods
.method public constructor <init>(Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lio/flutter/plugins/webviewflutter/PigeonApiHttpAuthHandler;-><init>(Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;)V

    return-void
.end method


# virtual methods
.method public cancel(Landroid/webkit/HttpAuthHandler;)V
    .locals 0

    .line 28
    invoke-virtual {p1}, Landroid/webkit/HttpAuthHandler;->cancel()V

    return-void
.end method

.method public proceed(Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-virtual {p1, p2, p3}, Landroid/webkit/HttpAuthHandler;->proceed(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public useHttpAuthUsernamePassword(Landroid/webkit/HttpAuthHandler;)Z
    .locals 0

    .line 23
    invoke-virtual {p1}, Landroid/webkit/HttpAuthHandler;->useHttpAuthUsernamePassword()Z

    move-result p0

    return p0
.end method
