.class public Lio/flutter/plugins/webviewflutter/WebViewFlutterPlugin;
.super Ljava/lang/Object;
.source "WebViewFlutterPlugin.java"

# interfaces
.implements Lio/flutter/embedding/engine/plugins/FlutterPlugin;
.implements Lio/flutter/embedding/engine/plugins/activity/ActivityAware;


# instance fields
.field private pluginBinding:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

.field private proxyApiRegistrar:Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInstanceManager()Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager;
    .locals 0

    .line 86
    iget-object p0, p0, Lio/flutter/plugins/webviewflutter/WebViewFlutterPlugin;->proxyApiRegistrar:Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;

    invoke-virtual {p0}, Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;->getInstanceManager()Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager;

    move-result-object p0

    return-object p0
.end method

.method public onAttachedToActivity(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 0

    .line 62
    iget-object p0, p0, Lio/flutter/plugins/webviewflutter/WebViewFlutterPlugin;->proxyApiRegistrar:Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;

    if-eqz p0, :cond_0

    .line 63
    invoke-interface {p1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;->setContext(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public onAttachedToEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 6

    .line 33
    iput-object p1, p0, Lio/flutter/plugins/webviewflutter/WebViewFlutterPlugin;->pluginBinding:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

    .line 35
    new-instance v0, Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;

    .line 37
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object v1

    .line 38
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lio/flutter/plugins/webviewflutter/FlutterAssetManager$PluginBindingFlutterAssetManager;

    .line 40
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getFlutterAssets()Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterAssets;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lio/flutter/plugins/webviewflutter/FlutterAssetManager$PluginBindingFlutterAssetManager;-><init>(Landroid/content/res/AssetManager;Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterAssets;)V

    invoke-direct {v0, v1, v2, v3}, Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Landroid/content/Context;Lio/flutter/plugins/webviewflutter/FlutterAssetManager;)V

    iput-object v0, p0, Lio/flutter/plugins/webviewflutter/WebViewFlutterPlugin;->proxyApiRegistrar:Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;

    .line 43
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getPlatformViewRegistry()Lio/flutter/plugin/platform/PlatformViewRegistry;

    move-result-object p1

    new-instance v0, Lio/flutter/plugins/webviewflutter/FlutterViewFactory;

    iget-object v1, p0, Lio/flutter/plugins/webviewflutter/WebViewFlutterPlugin;->proxyApiRegistrar:Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;

    .line 46
    invoke-virtual {v1}, Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;->getInstanceManager()Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/flutter/plugins/webviewflutter/FlutterViewFactory;-><init>(Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager;)V

    .line 44
    const-string v1, "plugins.flutter.io/webview"

    invoke-interface {p1, v1, v0}, Lio/flutter/plugin/platform/PlatformViewRegistry;->registerViewFactory(Ljava/lang/String;Lio/flutter/plugin/platform/PlatformViewFactory;)Z

    .line 48
    iget-object p0, p0, Lio/flutter/plugins/webviewflutter/WebViewFlutterPlugin;->proxyApiRegistrar:Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;

    invoke-virtual {p0}, Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;->setUp()V

    return-void
.end method

.method public onDetachedFromActivity()V
    .locals 1

    .line 80
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/WebViewFlutterPlugin;->proxyApiRegistrar:Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;

    iget-object p0, p0, Lio/flutter/plugins/webviewflutter/WebViewFlutterPlugin;->pluginBinding:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

    invoke-virtual {p0}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;->setContext(Landroid/content/Context;)V

    return-void
.end method

.method public onDetachedFromActivityForConfigChanges()V
    .locals 1

    .line 69
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/WebViewFlutterPlugin;->proxyApiRegistrar:Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;

    iget-object p0, p0, Lio/flutter/plugins/webviewflutter/WebViewFlutterPlugin;->pluginBinding:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

    invoke-virtual {p0}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;->setContext(Landroid/content/Context;)V

    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 0

    .line 53
    iget-object p1, p0, Lio/flutter/plugins/webviewflutter/WebViewFlutterPlugin;->proxyApiRegistrar:Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;

    if-eqz p1, :cond_0

    .line 54
    invoke-virtual {p1}, Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;->tearDown()V

    .line 55
    iget-object p1, p0, Lio/flutter/plugins/webviewflutter/WebViewFlutterPlugin;->proxyApiRegistrar:Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;

    invoke-virtual {p1}, Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;->getInstanceManager()Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager;

    move-result-object p1

    invoke-virtual {p1}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager;->stopFinalizationListener()V

    const/4 p1, 0x0

    .line 56
    iput-object p1, p0, Lio/flutter/plugins/webviewflutter/WebViewFlutterPlugin;->proxyApiRegistrar:Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;

    :cond_0
    return-void
.end method

.method public onReattachedToActivityForConfigChanges(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 0

    .line 75
    iget-object p0, p0, Lio/flutter/plugins/webviewflutter/WebViewFlutterPlugin;->proxyApiRegistrar:Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;

    invoke-interface {p1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/flutter/plugins/webviewflutter/ProxyApiRegistrar;->setContext(Landroid/content/Context;)V

    return-void
.end method
