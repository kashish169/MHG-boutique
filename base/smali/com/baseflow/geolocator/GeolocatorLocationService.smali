.class public Lcom/baseflow/geolocator/GeolocatorLocationService;
.super Landroid/app/Service;
.source "GeolocatorLocationService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baseflow/geolocator/GeolocatorLocationService$LocalBinder;
    }
.end annotation


# static fields
.field private static final CHANNEL_ID:Ljava/lang/String; = "geolocator_channel_01"

.field private static final ONGOING_NOTIFICATION_ID:I = 0x12697

.field private static final TAG:Ljava/lang/String; = "FlutterGeolocator"


# instance fields
.field private final WAKELOCK_TAG:Ljava/lang/String;

.field private final WIFILOCK_TAG:Ljava/lang/String;

.field private activity:Landroid/app/Activity;

.field private backgroundNotification:Lcom/baseflow/geolocator/location/BackgroundNotification;

.field private final binder:Lcom/baseflow/geolocator/GeolocatorLocationService$LocalBinder;

.field private connectedEngines:I

.field private geolocationManager:Lcom/baseflow/geolocator/location/GeolocationManager;

.field private isForeground:Z

.field private listenerCount:I

.field private locationClient:Lcom/baseflow/geolocator/location/LocationClient;

.field private wakeLock:Landroid/os/PowerManager$WakeLock;

.field private wifiLock:Landroid/net/wifi/WifiManager$WifiLock;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 33
    const-string v0, "GeolocatorLocationService:Wakelock"

    iput-object v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->WAKELOCK_TAG:Ljava/lang/String;

    .line 34
    const-string v0, "GeolocatorLocationService:WifiLock"

    iput-object v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->WIFILOCK_TAG:Ljava/lang/String;

    .line 35
    new-instance v0, Lcom/baseflow/geolocator/GeolocatorLocationService$LocalBinder;

    invoke-direct {v0, p0, p0}, Lcom/baseflow/geolocator/GeolocatorLocationService$LocalBinder;-><init>(Lcom/baseflow/geolocator/GeolocatorLocationService;Lcom/baseflow/geolocator/GeolocatorLocationService;)V

    iput-object v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->binder:Lcom/baseflow/geolocator/GeolocatorLocationService$LocalBinder;

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->isForeground:Z

    .line 38
    iput v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->connectedEngines:I

    .line 39
    iput v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->listenerCount:I

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->activity:Landroid/app/Activity;

    .line 41
    iput-object v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->geolocationManager:Lcom/baseflow/geolocator/location/GeolocationManager;

    .line 44
    iput-object v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 45
    iput-object v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 47
    iput-object v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->backgroundNotification:Lcom/baseflow/geolocator/location/BackgroundNotification;

    return-void
.end method

.method static synthetic lambda$startLocationService$0(Lio/flutter/plugin/common/EventChannel$EventSink;Landroid/location/Location;)V
    .locals 0

    .line 122
    invoke-static {p1}, Lcom/baseflow/geolocator/location/LocationMapper;->toHashMap(Landroid/location/Location;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p0, p1}, Lio/flutter/plugin/common/EventChannel$EventSink;->success(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$startLocationService$1(Lio/flutter/plugin/common/EventChannel$EventSink;Lcom/baseflow/geolocator/errors/ErrorCodes;)V
    .locals 2

    .line 124
    invoke-virtual {p1}, Lcom/baseflow/geolocator/errors/ErrorCodes;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/baseflow/geolocator/errors/ErrorCodes;->toDescription()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p0, v0, p1, v1}, Lio/flutter/plugin/common/EventChannel$EventSink;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private obtainWakeLocks(Lcom/baseflow/geolocator/location/ForegroundNotificationOptions;)V
    .locals 4

    .line 193
    invoke-direct {p0}, Lcom/baseflow/geolocator/GeolocatorLocationService;->releaseWakeLocks()V

    .line 194
    invoke-virtual {p1}, Lcom/baseflow/geolocator/location/ForegroundNotificationOptions;->isEnableWakeLock()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {p0}, Lcom/baseflow/geolocator/GeolocatorLocationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "power"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    .line 198
    const-string v3, "GeolocatorLocationService:Wakelock"

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 199
    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 200
    iget-object v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 203
    :cond_0
    invoke-virtual {p1}, Lcom/baseflow/geolocator/location/ForegroundNotificationOptions;->isEnableWifiLock()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 205
    invoke-virtual {p0}, Lcom/baseflow/geolocator/GeolocatorLocationService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    if-eqz p1, :cond_1

    const/4 v0, 0x3

    .line 207
    const-string v2, "GeolocatorLocationService:WifiLock"

    invoke-virtual {p1, v0, v2}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object p1

    iput-object p1, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 208
    invoke-virtual {p1, v1}, Landroid/net/wifi/WifiManager$WifiLock;->setReferenceCounted(Z)V

    .line 209
    iget-object p0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    :cond_1
    return-void
.end method

.method private releaseWakeLocks()V
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 183
    iput-object v1, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 186
    iget-object v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 187
    iput-object v1, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    :cond_1
    return-void
.end method


# virtual methods
.method public canStopLocationService(Z)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 89
    iget p0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->listenerCount:I

    if-ne p0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0

    .line 91
    :cond_1
    iget p0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->connectedEngines:I

    if-nez p0, :cond_2

    move v0, v1

    :cond_2
    return v0
.end method

.method public changeNotificationOptions(Lcom/baseflow/geolocator/location/ForegroundNotificationOptions;)V
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->backgroundNotification:Lcom/baseflow/geolocator/location/BackgroundNotification;

    if-eqz v0, :cond_0

    .line 171
    iget-boolean v1, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->isForeground:Z

    invoke-virtual {v0, p1, v1}, Lcom/baseflow/geolocator/location/BackgroundNotification;->updateOptions(Lcom/baseflow/geolocator/location/ForegroundNotificationOptions;Z)V

    .line 172
    invoke-direct {p0, p1}, Lcom/baseflow/geolocator/GeolocatorLocationService;->obtainWakeLocks(Lcom/baseflow/geolocator/location/ForegroundNotificationOptions;)V

    :cond_0
    return-void
.end method

.method public disableBackgroundMode()V
    .locals 2

    .line 156
    iget-boolean v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->isForeground:Z

    if-eqz v0, :cond_0

    .line 157
    const-string v0, "FlutterGeolocator"

    const-string v1, "Stop service in foreground."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 159
    invoke-virtual {p0, v0}, Lcom/baseflow/geolocator/GeolocatorLocationService;->stopForeground(I)V

    .line 163
    invoke-direct {p0}, Lcom/baseflow/geolocator/GeolocatorLocationService;->releaseWakeLocks()V

    const/4 v0, 0x0

    .line 164
    iput-boolean v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->isForeground:Z

    const/4 v0, 0x0

    .line 165
    iput-object v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->backgroundNotification:Lcom/baseflow/geolocator/location/BackgroundNotification;

    :cond_0
    return-void
.end method

.method public enableBackgroundMode(Lcom/baseflow/geolocator/location/ForegroundNotificationOptions;)V
    .locals 5

    .line 137
    iget-object v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->backgroundNotification:Lcom/baseflow/geolocator/location/BackgroundNotification;

    const-string v1, "FlutterGeolocator"

    if-eqz v0, :cond_0

    .line 138
    const-string v0, "Service already in foreground mode."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-virtual {p0, p1}, Lcom/baseflow/geolocator/GeolocatorLocationService;->changeNotificationOptions(Lcom/baseflow/geolocator/location/ForegroundNotificationOptions;)V

    goto :goto_0

    .line 141
    :cond_0
    const-string v0, "Start service in foreground mode."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    new-instance v0, Lcom/baseflow/geolocator/location/BackgroundNotification;

    .line 145
    invoke-virtual {p0}, Lcom/baseflow/geolocator/GeolocatorLocationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "geolocator_channel_01"

    const v3, 0x12697

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v1, v2, v4, p1}, Lcom/baseflow/geolocator/location/BackgroundNotification;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;Lcom/baseflow/geolocator/location/ForegroundNotificationOptions;)V

    iput-object v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->backgroundNotification:Lcom/baseflow/geolocator/location/BackgroundNotification;

    .line 146
    const-string v1, "Background Location"

    invoke-virtual {v0, v1}, Lcom/baseflow/geolocator/location/BackgroundNotification;->updateChannel(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->backgroundNotification:Lcom/baseflow/geolocator/location/BackgroundNotification;

    invoke-virtual {v0}, Lcom/baseflow/geolocator/location/BackgroundNotification;->build()Landroid/app/Notification;

    move-result-object v0

    .line 148
    invoke-virtual {p0, v3, v0}, Lcom/baseflow/geolocator/GeolocatorLocationService;->startForeground(ILandroid/app/Notification;)V

    const/4 v0, 0x1

    .line 149
    iput-boolean v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->isForeground:Z

    .line 151
    :goto_0
    invoke-direct {p0, p1}, Lcom/baseflow/geolocator/GeolocatorLocationService;->obtainWakeLocks(Lcom/baseflow/geolocator/location/ForegroundNotificationOptions;)V

    return-void
.end method

.method public flutterEngineConnected()V
    .locals 2

    .line 96
    iget v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->connectedEngines:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->connectedEngines:I

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Flutter engine connected. Connected engine count "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->connectedEngines:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FlutterGeolocator"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public flutterEngineDisconnected()V
    .locals 2

    .line 102
    iget v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->connectedEngines:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->connectedEngines:I

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Flutter engine disconnected. Connected engine count "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->connectedEngines:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FlutterGeolocator"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 64
    const-string p1, "FlutterGeolocator"

    const-string v0, "Binding to location service."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object p0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->binder:Lcom/baseflow/geolocator/GeolocatorLocationService$LocalBinder;

    return-object p0
.end method

.method public onCreate()V
    .locals 2

    .line 51
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 52
    const-string v0, "FlutterGeolocator"

    const-string v1, "Creating service."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    new-instance v0, Lcom/baseflow/geolocator/location/GeolocationManager;

    invoke-direct {v0}, Lcom/baseflow/geolocator/location/GeolocationManager;-><init>()V

    iput-object v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->geolocationManager:Lcom/baseflow/geolocator/location/GeolocationManager;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 76
    const-string v0, "Destroying location service."

    const-string v1, "FlutterGeolocator"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-virtual {p0}, Lcom/baseflow/geolocator/GeolocatorLocationService;->stopLocationService()V

    .line 79
    invoke-virtual {p0}, Lcom/baseflow/geolocator/GeolocatorLocationService;->disableBackgroundMode()V

    const/4 v0, 0x0

    .line 80
    iput-object v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->geolocationManager:Lcom/baseflow/geolocator/location/GeolocationManager;

    .line 81
    iput-object v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->backgroundNotification:Lcom/baseflow/geolocator/location/BackgroundNotification;

    .line 83
    const-string v0, "Destroyed location service."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2

    .line 70
    const-string v0, "FlutterGeolocator"

    const-string v1, "Unbinding from location service."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->activity:Landroid/app/Activity;

    return-void
.end method

.method public startLocationService(ZLcom/baseflow/geolocator/location/LocationOptions;Lio/flutter/plugin/common/EventChannel$EventSink;)V
    .locals 3

    .line 111
    iget v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->listenerCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->listenerCount:I

    .line 112
    iget-object v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->geolocationManager:Lcom/baseflow/geolocator/location/GeolocationManager;

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/baseflow/geolocator/GeolocatorLocationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 116
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 114
    invoke-virtual {v0, v1, p1, p2}, Lcom/baseflow/geolocator/location/GeolocationManager;->createLocationClient(Landroid/content/Context;ZLcom/baseflow/geolocator/location/LocationOptions;)Lcom/baseflow/geolocator/location/LocationClient;

    move-result-object p1

    iput-object p1, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->locationClient:Lcom/baseflow/geolocator/location/LocationClient;

    .line 119
    iget-object p2, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->geolocationManager:Lcom/baseflow/geolocator/location/GeolocationManager;

    iget-object p0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->activity:Landroid/app/Activity;

    new-instance v0, Lcom/baseflow/geolocator/GeolocatorLocationService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p3}, Lcom/baseflow/geolocator/GeolocatorLocationService$$ExternalSyntheticLambda0;-><init>(Lio/flutter/plugin/common/EventChannel$EventSink;)V

    new-instance v1, Lcom/baseflow/geolocator/GeolocatorLocationService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p3}, Lcom/baseflow/geolocator/GeolocatorLocationService$$ExternalSyntheticLambda1;-><init>(Lio/flutter/plugin/common/EventChannel$EventSink;)V

    invoke-virtual {p2, p1, p0, v0, v1}, Lcom/baseflow/geolocator/location/GeolocationManager;->startPositionUpdates(Lcom/baseflow/geolocator/location/LocationClient;Landroid/app/Activity;Lcom/baseflow/geolocator/location/PositionChangedCallback;Lcom/baseflow/geolocator/errors/ErrorCallback;)V

    :cond_0
    return-void
.end method

.method public stopLocationService()V
    .locals 2

    .line 129
    iget v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->listenerCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->listenerCount:I

    .line 130
    const-string v0, "FlutterGeolocator"

    const-string v1, "Stopping location service."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->locationClient:Lcom/baseflow/geolocator/location/LocationClient;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->geolocationManager:Lcom/baseflow/geolocator/location/GeolocationManager;

    if-eqz p0, :cond_0

    .line 132
    invoke-virtual {p0, v0}, Lcom/baseflow/geolocator/location/GeolocationManager;->stopPositionUpdates(Lcom/baseflow/geolocator/location/LocationClient;)V

    :cond_0
    return-void
.end method
