.class public Lcom/baseflow/geolocator/GeolocatorPlugin;
.super Ljava/lang/Object;
.source "GeolocatorPlugin.java"

# interfaces
.implements Lio/flutter/embedding/engine/plugins/FlutterPlugin;
.implements Lio/flutter/embedding/engine/plugins/activity/ActivityAware;


# static fields
.field private static final TAG:Ljava/lang/String; = "FlutterGeolocator"


# instance fields
.field private foregroundLocationService:Lcom/baseflow/geolocator/GeolocatorLocationService;

.field private final geolocationManager:Lcom/baseflow/geolocator/location/GeolocationManager;

.field private final locationAccuracyManager:Lcom/baseflow/geolocator/location/LocationAccuracyManager;

.field private locationServiceHandler:Lcom/baseflow/geolocator/LocationServiceHandlerImpl;

.field private methodCallHandler:Lcom/baseflow/geolocator/MethodCallHandlerImpl;

.field private final permissionManager:Lcom/baseflow/geolocator/permission/PermissionManager;

.field private pluginBinding:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

.field private final serviceConnection:Landroid/content/ServiceConnection;

.field private streamHandler:Lcom/baseflow/geolocator/StreamHandlerImpl;


# direct methods
.method static bridge synthetic -$$Nest$fgetforegroundLocationService(Lcom/baseflow/geolocator/GeolocatorPlugin;)Lcom/baseflow/geolocator/GeolocatorLocationService;
    .locals 0

    iget-object p0, p0, Lcom/baseflow/geolocator/GeolocatorPlugin;->foregroundLocationService:Lcom/baseflow/geolocator/GeolocatorLocationService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputforegroundLocationService(Lcom/baseflow/geolocator/GeolocatorPlugin;Lcom/baseflow/geolocator/GeolocatorLocationService;)V
    .locals 0

    iput-object p1, p0, Lcom/baseflow/geolocator/GeolocatorPlugin;->foregroundLocationService:Lcom/baseflow/geolocator/GeolocatorLocationService;

    return-void
.end method

.method static bridge synthetic -$$Nest$minitialize(Lcom/baseflow/geolocator/GeolocatorPlugin;Lcom/baseflow/geolocator/GeolocatorLocationService;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baseflow/geolocator/GeolocatorPlugin;->initialize(Lcom/baseflow/geolocator/GeolocatorLocationService;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/baseflow/geolocator/GeolocatorPlugin$1;

    invoke-direct {v0, p0}, Lcom/baseflow/geolocator/GeolocatorPlugin$1;-><init>(Lcom/baseflow/geolocator/GeolocatorPlugin;)V

    iput-object v0, p0, Lcom/baseflow/geolocator/GeolocatorPlugin;->serviceConnection:Landroid/content/ServiceConnection;

    .line 59
    new-instance v0, Lcom/baseflow/geolocator/permission/PermissionManager;

    invoke-direct {v0}, Lcom/baseflow/geolocator/permission/PermissionManager;-><init>()V

    iput-object v0, p0, Lcom/baseflow/geolocator/GeolocatorPlugin;->permissionManager:Lcom/baseflow/geolocator/permission/PermissionManager;

    .line 60
    new-instance v0, Lcom/baseflow/geolocator/location/GeolocationManager;

    invoke-direct {v0}, Lcom/baseflow/geolocator/location/GeolocationManager;-><init>()V

    iput-object v0, p0, Lcom/baseflow/geolocator/GeolocatorPlugin;->geolocationManager:Lcom/baseflow/geolocator/location/GeolocationManager;

    .line 61
    new-instance v0, Lcom/baseflow/geolocator/location/LocationAccuracyManager;

    invoke-direct {v0}, Lcom/baseflow/geolocator/location/LocationAccuracyManager;-><init>()V

    iput-object v0, p0, Lcom/baseflow/geolocator/GeolocatorPlugin;->locationAccuracyManager:Lcom/baseflow/geolocator/location/LocationAccuracyManager;

    return-void
.end method

.method private bindForegroundService(Landroid/content/Context;)V
    .locals 2

    .line 149
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/baseflow/geolocator/GeolocatorLocationService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object p0, p0, Lcom/baseflow/geolocator/GeolocatorPlugin;->serviceConnection:Landroid/content/ServiceConnection;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method private deregisterListeners()V
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/baseflow/geolocator/GeolocatorPlugin;->pluginBinding:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    if-eqz v0, :cond_0

    .line 143
    iget-object v1, p0, Lcom/baseflow/geolocator/GeolocatorPlugin;->geolocationManager:Lcom/baseflow/geolocator/location/GeolocationManager;

    invoke-interface {v0, v1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->removeActivityResultListener(Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;)V

    .line 144
    iget-object v0, p0, Lcom/baseflow/geolocator/GeolocatorPlugin;->pluginBinding:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    iget-object p0, p0, Lcom/baseflow/geolocator/GeolocatorPlugin;->permissionManager:Lcom/baseflow/geolocator/permission/PermissionManager;

    invoke-interface {v0, p0}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->removeRequestPermissionsResultListener(Lio/flutter/plugin/common/PluginRegistry$RequestPermissionsResultListener;)V

    :cond_0
    return-void
.end method

.method private dispose()V
    .locals 2

    .line 173
    const-string v0, "FlutterGeolocator"

    const-string v1, "Disposing Geolocator services"

    invoke-static {v0, v1}, Lio/flutter/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/baseflow/geolocator/GeolocatorPlugin;->methodCallHandler:Lcom/baseflow/geolocator/MethodCallHandlerImpl;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {v0}, Lcom/baseflow/geolocator/MethodCallHandlerImpl;->stopListening()V

    .line 176
    iget-object v0, p0, Lcom/baseflow/geolocator/GeolocatorPlugin;->methodCallHandler:Lcom/baseflow/geolocator/MethodCallHandlerImpl;

    invoke-virtual {v0, v1}, Lcom/baseflow/geolocator/MethodCallHandlerImpl;->setActivity(Landroid/app/Activity;)V

    .line 177
    iput-object v1, p0, Lcom/baseflow/geolocator/GeolocatorPlugin;->methodCallHandler:Lcom/baseflow/geolocator/MethodCallHandlerImpl;

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/baseflow/geolocator/GeolocatorPlugin;->streamHandler:Lcom/baseflow/geolocator/StreamHandlerImpl;

    if-eqz v0, :cond_1

    .line 180
    invoke-virtual {v0}, Lcom/baseflow/geolocator/StreamHandlerImpl;->stopListening()V

    .line 181
    iget-object v0, p0, Lcom/baseflow/geolocator/GeolocatorPlugin;->streamHandler:Lcom/baseflow/geolocator/StreamHandlerImpl;

    invoke-virtual {v0, v1}, Lcom/baseflow/geolocator/StreamHandlerImpl;->setForegroundLocationService(Lcom/baseflow/geolocator/GeolocatorLocationService;)V

    .line 182
    iput-object v1, p0, Lcom/baseflow/geolocator/GeolocatorPlugin;->streamHandler:Lcom/baseflow/geolocator/StreamHandlerImpl;

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/baseflow/geolocator/GeolocatorPlugin;->locationServiceHandler:Lcom/baseflow/geolocator/LocationServiceHandlerImpl;

    if-eqz v0, :cond_2

    .line 185
    invoke-virtual {v0, v1}, Lcom/baseflow/geolocator/LocationServiceHandlerImpl;->setContext(Landroid/content/Context;)V

    .line 186
    iget-object v0, p0, Lcom/baseflow/geolocator/GeolocatorPlugin;->locationServiceHandler:Lcom/baseflow/geolocator/LocationServiceHandlerImpl;

    invoke-virtual {v0}, Lcom/baseflow/geolocator/LocationServiceHandlerImpl;->stopListening()V

    .line 187
    iput-object v1, p0, Lcom/baseflow/geolocator/GeolocatorPlugin;->locationServiceHandler:Lcom/baseflow/geolocator/LocationServiceHandlerImpl;

    .line 189
    :cond_2
    iget-object p0, p0, Lcom/baseflow/geolocator/GeolocatorPlugin;->foregroundLocationService:Lcom/baseflow/geolocator/GeolocatorLocationService;

    if-eqz p0, :cond_3

    .line 190
    invoke-virtual {p0, v1}, Lcom/baseflow/geolocator/GeolocatorLocationService;->setActivity(Landroid/app/Activity;)V

    :cond_3
    return-void
.end method

.method private initialize(Lcom/baseflow/geolocator/GeolocatorLocationService;)V
    .locals 2

    .line 163
    const-string v0, "FlutterGeolocator"

    const-string v1, "Initializing Geolocator services"

    invoke-static {v0, v1}, Lio/flutter/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iput-object p1, p0, Lcom/baseflow/geolocator/GeolocatorPlugin;->foregroundLocationService:Lcom/baseflow/geolocator/GeolocatorLocationService;

    .line 165
    invoke-virtual {p1}, Lcom/baseflow/geolocator/GeolocatorLocationService;->flutterEngineConnected()V

    .line 167
    iget-object p0, p0, Lcom/baseflow/geolocator/GeolocatorPlugin;->streamHandler:Lcom/baseflow/geolocator/StreamHandlerImpl;

    if-eqz p0, :cond_0

    .line 168
    invoke-virtual {p0, p1}, Lcom/baseflow/geolocator/StreamHandlerImpl;->setForegroundLocationService(Lcom/baseflow/geolocator/GeolocatorLocationService;)V

    :cond_0
    return-void
.end method

.method private registerListeners()V
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/baseflow/geolocator/GeolocatorPlugin;->pluginBinding:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    if-eqz v0, :cond_0

    .line 136
    iget-object v1, p0, Lcom/baseflow/geolocator/GeolocatorPlugin;->geolocationManager:Lcom/baseflow/geolocator/location/GeolocationManager;

    invoke-interface {v0, v1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->addActivityResultListener(Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;)V

    .line 137
    iget-object v0, p0, Lcom/baseflow/geolocator/GeolocatorPlugin;->pluginBinding:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    iget-object p0, p0, Lcom/baseflow/geolocator/GeolocatorPlugin;->permissionManager:Lcom/baseflow/geolocator/permission/PermissionManager;

    invoke-interface {v0, p0}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->addRequestPermissionsResultListener(Lio/flutter/plugin/common/PluginRegistry$RequestPermissionsResultListener;)V

    :cond_0
    return-void
.end method

.method private unbindForegroundService(Landroid/content/Context;)V
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/baseflow/geolocator/GeolocatorPlugin;->foregroundLocationService:Lcom/baseflow/geolocator/GeolocatorLocationService;

    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {v0}, Lcom/baseflow/geolocator/GeolocatorLocationService;->flutterEngineDisconnected()V

    .line 159
    :cond_0
    iget-object p0, p0, Lcom/baseflow/geolocator/GeolocatorPlugin;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method


# virtual methods
.method public onAttachedToActivity(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 2

    .line 92
    const-string v0, "FlutterGeolocator"

    const-string v1, "Attaching Geolocator to activity"

    invoke-static {v0, v1}, Lio/flutter/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iput-object p1, p0, Lcom/baseflow/geolocator/GeolocatorPlugin;->pluginBinding:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    .line 94
    invoke-direct {p0}, Lcom/baseflow/geolocator/GeolocatorPlugin;->registerListeners()V

    .line 95
    iget-object v0, p0, Lcom/baseflow/geolocator/GeolocatorPlugin;->methodCallHandler:Lcom/baseflow/geolocator/MethodCallHandlerImpl;

    if-eqz v0, :cond_0

    .line 96
    invoke-interface {p1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baseflow/geolocator/MethodCallHandlerImpl;->setActivity(Landroid/app/Activity;)V

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/baseflow/geolocator/GeolocatorPlugin;->streamHandler:Lcom/baseflow/geolocator/StreamHandlerImpl;

    if-eqz v0, :cond_1

    .line 99
    invoke-interface {p1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/baseflow/geolocator/StreamHandlerImpl;->setActivity(Landroid/app/Activity;)V

    .line 101
    :cond_1
    iget-object p1, p0, Lcom/baseflow/geolocator/GeolocatorPlugin;->foregroundLocationService:Lcom/baseflow/geolocator/GeolocatorLocationService;

    if-eqz p1, :cond_2

    .line 102
    iget-object p0, p0, Lcom/baseflow/geolocator/GeolocatorPlugin;->pluginBinding:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    invoke-interface {p0}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/baseflow/geolocator/GeolocatorLocationService;->setActivity(Landroid/app/Activity;)V

    :cond_2
    return-void
.end method

.method public onAttachedToEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 4

    .line 66
    new-instance v0, Lcom/baseflow/geolocator/MethodCallHandlerImpl;

    iget-object v1, p0, Lcom/baseflow/geolocator/GeolocatorPlugin;->permissionManager:Lcom/baseflow/geolocator/permission/PermissionManager;

    iget-object v2, p0, Lcom/baseflow/geolocator/GeolocatorPlugin;->geolocationManager:Lcom/baseflow/geolocator/location/GeolocationManager;

    iget-object v3, p0, Lcom/baseflow/geolocator/GeolocatorPlugin;->locationAccuracyManager:Lcom/baseflow/geolocator/location/LocationAccuracyManager;

    invoke-direct {v0, v1, v2, v3}, Lcom/baseflow/geolocator/MethodCallHandlerImpl;-><init>(Lcom/baseflow/geolocator/permission/PermissionManager;Lcom/baseflow/geolocator/location/GeolocationManager;Lcom/baseflow/geolocator/location/LocationAccuracyManager;)V

    iput-object v0, p0, Lcom/baseflow/geolocator/GeolocatorPlugin;->methodCallHandler:Lcom/baseflow/geolocator/MethodCallHandlerImpl;

    .line 70
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object v2

    .line 69
    invoke-virtual {v0, v1, v2}, Lcom/baseflow/geolocator/MethodCallHandlerImpl;->startListening(Landroid/content/Context;Lio/flutter/plugin/common/BinaryMessenger;)V

    .line 71
    new-instance v0, Lcom/baseflow/geolocator/StreamHandlerImpl;

    iget-object v1, p0, Lcom/baseflow/geolocator/GeolocatorPlugin;->permissionManager:Lcom/baseflow/geolocator/permission/PermissionManager;

    invoke-direct {v0, v1}, Lcom/baseflow/geolocator/StreamHandlerImpl;-><init>(Lcom/baseflow/geolocator/permission/PermissionManager;)V

    iput-object v0, p0, Lcom/baseflow/geolocator/GeolocatorPlugin;->streamHandler:Lcom/baseflow/geolocator/StreamHandlerImpl;

    .line 73
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object v2

    .line 72
    invoke-virtual {v0, v1, v2}, Lcom/baseflow/geolocator/StreamHandlerImpl;->startListening(Landroid/content/Context;Lio/flutter/plugin/common/BinaryMessenger;)V

    .line 75
    new-instance v0, Lcom/baseflow/geolocator/LocationServiceHandlerImpl;

    invoke-direct {v0}, Lcom/baseflow/geolocator/LocationServiceHandlerImpl;-><init>()V

    iput-object v0, p0, Lcom/baseflow/geolocator/GeolocatorPlugin;->locationServiceHandler:Lcom/baseflow/geolocator/LocationServiceHandlerImpl;

    .line 76
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baseflow/geolocator/LocationServiceHandlerImpl;->setContext(Landroid/content/Context;)V

    .line 77
    iget-object v0, p0, Lcom/baseflow/geolocator/GeolocatorPlugin;->locationServiceHandler:Lcom/baseflow/geolocator/LocationServiceHandlerImpl;

    .line 78
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object v2

    .line 77
    invoke-virtual {v0, v1, v2}, Lcom/baseflow/geolocator/LocationServiceHandlerImpl;->startListening(Landroid/content/Context;Lio/flutter/plugin/common/BinaryMessenger;)V

    .line 80
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/baseflow/geolocator/GeolocatorPlugin;->bindForegroundService(Landroid/content/Context;)V

    return-void
.end method

.method public onDetachedFromActivity()V
    .locals 2

    .line 118
    const-string v0, "FlutterGeolocator"

    const-string v1, "Detaching Geolocator from activity"

    invoke-static {v0, v1}, Lio/flutter/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-direct {p0}, Lcom/baseflow/geolocator/GeolocatorPlugin;->deregisterListeners()V

    .line 120
    iget-object v0, p0, Lcom/baseflow/geolocator/GeolocatorPlugin;->methodCallHandler:Lcom/baseflow/geolocator/MethodCallHandlerImpl;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {v0, v1}, Lcom/baseflow/geolocator/MethodCallHandlerImpl;->setActivity(Landroid/app/Activity;)V

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/baseflow/geolocator/GeolocatorPlugin;->streamHandler:Lcom/baseflow/geolocator/StreamHandlerImpl;

    if-eqz v0, :cond_1

    .line 124
    invoke-virtual {v0, v1}, Lcom/baseflow/geolocator/StreamHandlerImpl;->setActivity(Landroid/app/Activity;)V

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/baseflow/geolocator/GeolocatorPlugin;->foregroundLocationService:Lcom/baseflow/geolocator/GeolocatorLocationService;

    if-eqz v0, :cond_2

    .line 127
    invoke-virtual {v0, v1}, Lcom/baseflow/geolocator/GeolocatorLocationService;->setActivity(Landroid/app/Activity;)V

    .line 129
    :cond_2
    iget-object v0, p0, Lcom/baseflow/geolocator/GeolocatorPlugin;->pluginBinding:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    if-eqz v0, :cond_3

    .line 130
    iput-object v1, p0, Lcom/baseflow/geolocator/GeolocatorPlugin;->pluginBinding:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    :cond_3
    return-void
.end method

.method public onDetachedFromActivityForConfigChanges()V
    .locals 0

    .line 108
    invoke-virtual {p0}, Lcom/baseflow/geolocator/GeolocatorPlugin;->onDetachedFromActivity()V

    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 0

    .line 85
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/baseflow/geolocator/GeolocatorPlugin;->unbindForegroundService(Landroid/content/Context;)V

    .line 86
    invoke-direct {p0}, Lcom/baseflow/geolocator/GeolocatorPlugin;->dispose()V

    return-void
.end method

.method public onReattachedToActivityForConfigChanges(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 0

    .line 113
    invoke-virtual {p0, p1}, Lcom/baseflow/geolocator/GeolocatorPlugin;->onAttachedToActivity(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V

    return-void
.end method
