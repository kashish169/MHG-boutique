.class public Lio/flutter/plugins/webviewflutter/WebResourceErrorProxyApi;
.super Lio/flutter/plugins/webviewflutter/PigeonApiWebResourceError;
.source "WebResourceErrorProxyApi.java"


# direct methods
.method public constructor <init>(Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lio/flutter/plugins/webviewflutter/PigeonApiWebResourceError;-><init>(Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;)V

    return-void
.end method


# virtual methods
.method public description(Landroid/webkit/WebResourceError;)Ljava/lang/String;
    .locals 0

    .line 26
    invoke-virtual {p1}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public errorCode(Landroid/webkit/WebResourceError;)J
    .locals 0

    .line 20
    invoke-virtual {p1}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result p0

    int-to-long p0, p0

    return-wide p0
.end method
