.class public Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;
.super Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;
.source "ProxyApiRegistrar.java"


# instance fields
.field private context:Landroid/content/Context;

.field private final flutterAssetManager:Lio/flutter/plugins/webviewflutter/FlutterAssetManager;


# direct methods
.method public constructor <init>(Lio/flutter/plugin/common/BinaryMessenger;Landroid/content/Context;Lio/flutter/plugins/webviewflutter/FlutterAssetManager;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;-><init>(Lio/flutter/plugin/common/BinaryMessenger;)V

    .line 28
    iput-object p2, p0, Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;->context:Landroid/content/Context;

    .line 29
    iput-object p3, p0, Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;->flutterAssetManager:Lio/flutter/plugins/webviewflutter/FlutterAssetManager;

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 0

    .line 188
    iget-object p0, p0, Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;->context:Landroid/content/Context;

    return-object p0
.end method

.method public getFlutterAssetManager()Lio/flutter/plugins/webviewflutter/FlutterAssetManager;
    .locals 0

    .line 197
    iget-object p0, p0, Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;->flutterAssetManager:Lio/flutter/plugins/webviewflutter/FlutterAssetManager;

    return-object p0
.end method

.method public getPigeonApiConsoleMessage()Lio/flutter/plugins/webviewflutter/PigeonApiConsoleMessage;
    .locals 1

    .line 87
    new-instance v0, Lio/flutter/plugins/webviewflutter/ConsoleMessageProxyApi;

    invoke-direct {v0, p0}, Lio/flutter/plugins/webviewflutter/ConsoleMessageProxyApi;-><init>(Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;)V

    return-object v0
.end method

.method public getPigeonApiCookieManager()Lio/flutter/plugins/webviewflutter/PigeonApiCookieManager;
    .locals 1

    .line 93
    new-instance v0, Lio/flutter/plugins/webviewflutter/CookieManagerProxyApi;

    invoke-direct {v0, p0}, Lio/flutter/plugins/webviewflutter/CookieManagerProxyApi;-><init>(Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;)V

    return-object v0
.end method

.method public getPigeonApiCustomViewCallback()Lio/flutter/plugins/webviewflutter/PigeonApiCustomViewCallback;
    .locals 1

    .line 165
    new-instance v0, Lio/flutter/plugins/webviewflutter/CustomViewCallbackProxyApi;

    invoke-direct {v0, p0}, Lio/flutter/plugins/webviewflutter/CustomViewCallbackProxyApi;-><init>(Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;)V

    return-object v0
.end method

.method public getPigeonApiDownloadListener()Lio/flutter/plugins/webviewflutter/PigeonApiDownloadListener;
    .locals 1

    .line 129
    new-instance v0, Lio/flutter/plugins/webviewflutter/DownloadListenerProxyApi;

    invoke-direct {v0, p0}, Lio/flutter/plugins/webviewflutter/DownloadListenerProxyApi;-><init>(Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;)V

    return-object v0
.end method

.method public getPigeonApiFileChooserParams()Lio/flutter/plugins/webviewflutter/PigeonApiFileChooserParams;
    .locals 1

    .line 153
    new-instance v0, Lio/flutter/plugins/webviewflutter/FileChooserParamsProxyApi;

    invoke-direct {v0, p0}, Lio/flutter/plugins/webviewflutter/FileChooserParamsProxyApi;-><init>(Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;)V

    return-object v0
.end method

.method public getPigeonApiFlutterAssetManager()Lio/flutter/plugins/webviewflutter/PigeonApiFlutterAssetManager;
    .locals 1

    .line 141
    new-instance v0, Lio/flutter/plugins/webviewflutter/FlutterAssetManagerProxyApi;

    invoke-direct {v0, p0}, Lio/flutter/plugins/webviewflutter/FlutterAssetManagerProxyApi;-><init>(Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;)V

    return-object v0
.end method

.method public getPigeonApiGeolocationPermissionsCallback()Lio/flutter/plugins/webviewflutter/PigeonApiGeolocationPermissionsCallback;
    .locals 1

    .line 177
    new-instance v0, Lio/flutter/plugins/webviewflutter/GeolocationPermissionsCallbackProxyApi;

    invoke-direct {v0, p0}, Lio/flutter/plugins/webviewflutter/GeolocationPermissionsCallbackProxyApi;-><init>(Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;)V

    return-object v0
.end method

.method public getPigeonApiHttpAuthHandler()Lio/flutter/plugins/webviewflutter/PigeonApiHttpAuthHandler;
    .locals 1

    .line 183
    new-instance v0, Lio/flutter/plugins/webviewflutter/HttpAuthHandlerProxyApi;

    invoke-direct {v0, p0}, Lio/flutter/plugins/webviewflutter/HttpAuthHandlerProxyApi;-><init>(Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;)V

    return-object v0
.end method

.method public getPigeonApiJavaScriptChannel()Lio/flutter/plugins/webviewflutter/PigeonApiJavaScriptChannel;
    .locals 1

    .line 117
    new-instance v0, Lio/flutter/plugins/webviewflutter/JavaScriptChannelProxyApi;

    invoke-direct {v0, p0}, Lio/flutter/plugins/webviewflutter/JavaScriptChannelProxyApi;-><init>(Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;)V

    return-object v0
.end method

.method public getPigeonApiPermissionRequest()Lio/flutter/plugins/webviewflutter/PigeonApiPermissionRequest;
    .locals 1

    .line 159
    new-instance v0, Lio/flutter/plugins/webviewflutter/PermissionRequestProxyApi;

    invoke-direct {v0, p0}, Lio/flutter/plugins/webviewflutter/PermissionRequestProxyApi;-><init>(Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;)V

    return-object v0
.end method

.method public getPigeonApiView()Lio/flutter/plugins/webviewflutter/PigeonApiView;
    .locals 1

    .line 171
    new-instance v0, Lio/flutter/plugins/webviewflutter/ViewProxyApi;

    invoke-direct {v0, p0}, Lio/flutter/plugins/webviewflutter/ViewProxyApi;-><init>(Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;)V

    return-object v0
.end method

.method public getPigeonApiWebChromeClient()Lio/flutter/plugins/webviewflutter/PigeonApiWebChromeClient;
    .locals 1

    .line 135
    new-instance v0, Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi;

    invoke-direct {v0, p0}, Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi;-><init>(Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;)V

    return-object v0
.end method

.method public getPigeonApiWebResourceError()Lio/flutter/plugins/webviewflutter/PigeonApiWebResourceError;
    .locals 1

    .line 69
    new-instance v0, Lio/flutter/plugins/webviewflutter/WebResourceErrorProxyApi;

    invoke-direct {v0, p0}, Lio/flutter/plugins/webviewflutter/WebResourceErrorProxyApi;-><init>(Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;)V

    return-object v0
.end method

.method public getPigeonApiWebResourceErrorCompat()Lio/flutter/plugins/webviewflutter/PigeonApiWebResourceErrorCompat;
    .locals 1

    .line 75
    new-instance v0, Lio/flutter/plugins/webviewflutter/WebResourceErrorCompatProxyApi;

    invoke-direct {v0, p0}, Lio/flutter/plugins/webviewflutter/WebResourceErrorCompatProxyApi;-><init>(Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;)V

    return-object v0
.end method

.method public getPigeonApiWebResourceRequest()Lio/flutter/plugins/webviewflutter/PigeonApiWebResourceRequest;
    .locals 1

    .line 62
    new-instance v0, Lio/flutter/plugins/webviewflutter/WebResourceRequestProxyApi;

    invoke-direct {v0, p0}, Lio/flutter/plugins/webviewflutter/WebResourceRequestProxyApi;-><init>(Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;)V

    return-object v0
.end method

.method public getPigeonApiWebResourceResponse()Lio/flutter/plugins/webviewflutter/PigeonApiWebResourceResponse;
    .locals 1

    .line 99
    new-instance v0, Lio/flutter/plugins/webviewflutter/WebResourceResponseProxyApi;

    invoke-direct {v0, p0}, Lio/flutter/plugins/webviewflutter/WebResourceResponseProxyApi;-><init>(Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;)V

    return-object v0
.end method

.method public getPigeonApiWebSettings()Lio/flutter/plugins/webviewflutter/PigeonApiWebSettings;
    .locals 1

    .line 111
    new-instance v0, Lio/flutter/plugins/webviewflutter/WebSettingsProxyApi;

    invoke-direct {v0, p0}, Lio/flutter/plugins/webviewflutter/WebSettingsProxyApi;-><init>(Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;)V

    return-object v0
.end method

.method public getPigeonApiWebStorage()Lio/flutter/plugins/webviewflutter/PigeonApiWebStorage;
    .locals 1

    .line 147
    new-instance v0, Lio/flutter/plugins/webviewflutter/WebStorageProxyApi;

    invoke-direct {v0, p0}, Lio/flutter/plugins/webviewflutter/WebStorageProxyApi;-><init>(Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;)V

    return-object v0
.end method

.method public getPigeonApiWebView()Lio/flutter/plugins/webviewflutter/PigeonApiWebView;
    .locals 1

    .line 105
    new-instance v0, Lio/flutter/plugins/webviewflutter/WebViewProxyApi;

    invoke-direct {v0, p0}, Lio/flutter/plugins/webviewflutter/WebViewProxyApi;-><init>(Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;)V

    return-object v0
.end method

.method public getPigeonApiWebViewClient()Lio/flutter/plugins/webviewflutter/PigeonApiWebViewClient;
    .locals 1

    .line 123
    new-instance v0, Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi;

    invoke-direct {v0, p0}, Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi;-><init>(Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;)V

    return-object v0
.end method

.method public getPigeonApiWebViewPoint()Lio/flutter/plugins/webviewflutter/PigeonApiWebViewPoint;
    .locals 1

    .line 81
    new-instance v0, Lio/flutter/plugins/webviewflutter/WebViewPointProxyApi;

    invoke-direct {v0, p0}, Lio/flutter/plugins/webviewflutter/WebViewPointProxyApi;-><init>(Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;)V

    return-object v0
.end method

.method logError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 50
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", Message: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", Stacktrace: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 50
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method runOnMainThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 41
    iget-object p0, p0, Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;->context:Landroid/content/Context;

    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 42
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 44
    :cond_0
    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method sdkIsAtLeast(I)Z
    .locals 0

    .line 35
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;->context:Landroid/content/Context;

    return-void
.end method
