.class public Lio/flutter/plugins/webviewflutter/WebResourceErrorCompatProxyApi;
.super Lio/flutter/plugins/webviewflutter/PigeonApiWebResourceErrorCompat;
.source "WebResourceErrorCompatProxyApi.java"


# direct methods
.method public constructor <init>(Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lio/flutter/plugins/webviewflutter/PigeonApiWebResourceErrorCompat;-><init>(Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;)V

    return-void
.end method


# virtual methods
.method public description(Landroidx/webkit/WebResourceErrorCompat;)Ljava/lang/String;
    .locals 0

    .line 26
    invoke-virtual {p1}, Landroidx/webkit/WebResourceErrorCompat;->getDescription()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public errorCode(Landroidx/webkit/WebResourceErrorCompat;)J
    .locals 0

    .line 19
    invoke-virtual {p1}, Landroidx/webkit/WebResourceErrorCompat;->getErrorCode()I

    move-result p0

    int-to-long p0, p0

    return-wide p0
.end method
