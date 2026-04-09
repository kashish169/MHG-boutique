.class public Lio/flutter/plugins/googlemaps/GoogleMapsPlugin;
.super Ljava/lang/Object;
.source "GoogleMapsPlugin.java"

# interfaces
.implements Lio/flutter/embedding/engine/plugins/FlutterPlugin;
.implements Lio/flutter/embedding/engine/plugins/activity/ActivityAware;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/plugins/googlemaps/GoogleMapsPlugin$ProxyLifecycleProvider;
    }
.end annotation


# static fields
.field private static final VIEW_TYPE:Ljava/lang/String; = "plugins.flutter.dev/google_maps_android"


# instance fields
.field lifecycle:Landroidx/lifecycle/Lifecycle;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static registerWith(Lio/flutter/plugin/common/PluginRegistry$Registrar;)V
    .locals 6

    .line 36
    invoke-interface {p0}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->activity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 42
    :cond_0
    instance-of v1, v0, Landroidx/lifecycle/LifecycleOwner;

    const-string v2, "plugins.flutter.dev/google_maps_android"

    if-eqz v1, :cond_1

    .line 44
    invoke-interface {p0}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->platformViewRegistry()Lio/flutter/plugin/platform/PlatformViewRegistry;

    move-result-object v1

    new-instance v3, Lio/flutter/plugins/googlemaps/GoogleMapFactory;

    .line 48
    invoke-interface {p0}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->messenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object v4

    .line 49
    invoke-interface {p0}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->context()Landroid/content/Context;

    move-result-object p0

    new-instance v5, Lio/flutter/plugins/googlemaps/GoogleMapsPlugin$1;

    invoke-direct {v5, v0}, Lio/flutter/plugins/googlemaps/GoogleMapsPlugin$1;-><init>(Landroid/app/Activity;)V

    invoke-direct {v3, v4, p0, v5}, Lio/flutter/plugins/googlemaps/GoogleMapFactory;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Landroid/content/Context;Lio/flutter/plugins/googlemaps/LifecycleProvider;)V

    .line 45
    invoke-interface {v1, v2, v3}, Lio/flutter/plugin/platform/PlatformViewRegistry;->registerViewFactory(Ljava/lang/String;Lio/flutter/plugin/platform/PlatformViewFactory;)Z

    goto :goto_0

    .line 58
    :cond_1
    invoke-interface {p0}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->platformViewRegistry()Lio/flutter/plugin/platform/PlatformViewRegistry;

    move-result-object v1

    new-instance v3, Lio/flutter/plugins/googlemaps/GoogleMapFactory;

    .line 62
    invoke-interface {p0}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->messenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object v4

    .line 63
    invoke-interface {p0}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->context()Landroid/content/Context;

    move-result-object p0

    new-instance v5, Lio/flutter/plugins/googlemaps/GoogleMapsPlugin$ProxyLifecycleProvider;

    invoke-direct {v5, v0}, Lio/flutter/plugins/googlemaps/GoogleMapsPlugin$ProxyLifecycleProvider;-><init>(Landroid/app/Activity;)V

    invoke-direct {v3, v4, p0, v5}, Lio/flutter/plugins/googlemaps/GoogleMapFactory;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Landroid/content/Context;Lio/flutter/plugins/googlemaps/LifecycleProvider;)V

    .line 59
    invoke-interface {v1, v2, v3}, Lio/flutter/plugin/platform/PlatformViewRegistry;->registerViewFactory(Ljava/lang/String;Lio/flutter/plugin/platform/PlatformViewFactory;)Z

    :goto_0
    return-void
.end method


# virtual methods
.method public onAttachedToActivity(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 0

    .line 97
    invoke-static {p1}, Lio/flutter/embedding/engine/plugins/lifecycle/FlutterLifecycleAdapter;->getActivityLifecycle(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    iput-object p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapsPlugin;->lifecycle:Landroidx/lifecycle/Lifecycle;

    return-void
.end method

.method public onAttachedToEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 4

    .line 75
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getPlatformViewRegistry()Lio/flutter/plugin/platform/PlatformViewRegistry;

    move-result-object v0

    new-instance v1, Lio/flutter/plugins/googlemaps/GoogleMapFactory;

    .line 79
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object v2

    .line 80
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance v3, Lio/flutter/plugins/googlemaps/GoogleMapsPlugin$2;

    invoke-direct {v3, p0}, Lio/flutter/plugins/googlemaps/GoogleMapsPlugin$2;-><init>(Lio/flutter/plugins/googlemaps/GoogleMapsPlugin;)V

    invoke-direct {v1, v2, p1, v3}, Lio/flutter/plugins/googlemaps/GoogleMapFactory;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Landroid/content/Context;Lio/flutter/plugins/googlemaps/LifecycleProvider;)V

    .line 76
    const-string p0, "plugins.flutter.dev/google_maps_android"

    invoke-interface {v0, p0, v1}, Lio/flutter/plugin/platform/PlatformViewRegistry;->registerViewFactory(Ljava/lang/String;Lio/flutter/plugin/platform/PlatformViewFactory;)Z

    return-void
.end method

.method public onDetachedFromActivity()V
    .locals 1

    const/4 v0, 0x0

    .line 102
    iput-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapsPlugin;->lifecycle:Landroidx/lifecycle/Lifecycle;

    return-void
.end method

.method public onDetachedFromActivityForConfigChanges()V
    .locals 0

    .line 112
    invoke-virtual {p0}, Lio/flutter/plugins/googlemaps/GoogleMapsPlugin;->onDetachedFromActivity()V

    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 0

    return-void
.end method

.method public onReattachedToActivityForConfigChanges(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 0

    .line 107
    invoke-virtual {p0, p1}, Lio/flutter/plugins/googlemaps/GoogleMapsPlugin;->onAttachedToActivity(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V

    return-void
.end method
