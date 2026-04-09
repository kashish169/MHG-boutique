.class public Lio/flutter/plugins/webviewflutter/CookieManagerProxyApi;
.super Lio/flutter/plugins/webviewflutter/PigeonApiCookieManager;
.source "CookieManagerProxyApi.java"


# direct methods
.method public constructor <init>(Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lio/flutter/plugins/webviewflutter/PigeonApiCookieManager;-><init>(Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;)V

    return-void
.end method

.method static synthetic lambda$removeAllCookies$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Boolean;)V
    .locals 0

    .line 47
    invoke-static {p1, p0}, Lio/flutter/plugins/webviewflutter/ResultCompat;->success(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getPigeonRegistrar()Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;
    .locals 0

    .line 20
    invoke-virtual {p0}, Lio/flutter/plugins/webviewflutter/CookieManagerProxyApi;->getPigeonRegistrar()Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;

    move-result-object p0

    return-object p0
.end method

.method public getPigeonRegistrar()Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;
    .locals 0

    .line 28
    invoke-super {p0}, Lio/flutter/plugins/webviewflutter/PigeonApiCookieManager;->getPigeonRegistrar()Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;

    move-result-object p0

    check-cast p0, Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;

    return-object p0
.end method

.method public instance()Landroid/webkit/CookieManager;
    .locals 0

    .line 34
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object p0

    return-object p0
.end method

.method public removeAllCookies(Landroid/webkit/CookieManager;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/CookieManager;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/Result<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 47
    new-instance p0, Lio/flutter/plugins/webviewflutter/CookieManagerProxyApi$$ExternalSyntheticLambda0;

    invoke-direct {p0, p2}, Lio/flutter/plugins/webviewflutter/CookieManagerProxyApi$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p0}, Landroid/webkit/CookieManager;->removeAllCookies(Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public setAcceptThirdPartyCookies(Landroid/webkit/CookieManager;Landroid/webkit/WebView;Z)V
    .locals 0

    .line 53
    invoke-virtual {p1, p2, p3}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    return-void
.end method

.method public setCookie(Landroid/webkit/CookieManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 40
    invoke-virtual {p1, p2, p3}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
