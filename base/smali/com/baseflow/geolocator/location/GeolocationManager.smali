.class public Lcom/baseflow/geolocator/location/GeolocationManager;
.super Ljava/lang/Object;
.source "GeolocationManager.java"

# interfaces
.implements Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;


# instance fields
.field private final locationClients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baseflow/geolocator/location/LocationClient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/baseflow/geolocator/location/GeolocationManager;->locationClients:Ljava/util/List;

    return-void
.end method

.method private isGooglePlayServicesAvailable(Landroid/content/Context;)Z
    .locals 1

    const/4 p0, 0x0

    .line 77
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    .line 78
    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    const/4 p0, 0x1

    :catch_0
    :cond_0
    return p0
.end method


# virtual methods
.method public createLocationClient(Landroid/content/Context;ZLcom/baseflow/geolocator/location/LocationOptions;)Lcom/baseflow/geolocator/location/LocationClient;
    .locals 0

    if-eqz p2, :cond_0

    .line 67
    new-instance p0, Lcom/baseflow/geolocator/location/LocationManagerClient;

    invoke-direct {p0, p1, p3}, Lcom/baseflow/geolocator/location/LocationManagerClient;-><init>(Landroid/content/Context;Lcom/baseflow/geolocator/location/LocationOptions;)V

    return-object p0

    .line 70
    :cond_0
    invoke-direct {p0, p1}, Lcom/baseflow/geolocator/location/GeolocationManager;->isGooglePlayServicesAvailable(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 71
    new-instance p0, Lcom/baseflow/geolocator/location/FusedLocationClient;

    invoke-direct {p0, p1, p3}, Lcom/baseflow/geolocator/location/FusedLocationClient;-><init>(Landroid/content/Context;Lcom/baseflow/geolocator/location/LocationOptions;)V

    goto :goto_0

    .line 72
    :cond_1
    new-instance p0, Lcom/baseflow/geolocator/location/LocationManagerClient;

    invoke-direct {p0, p1, p3}, Lcom/baseflow/geolocator/location/LocationManagerClient;-><init>(Landroid/content/Context;Lcom/baseflow/geolocator/location/LocationOptions;)V

    :goto_0
    return-object p0
.end method

.method public getLastKnownPosition(Landroid/content/Context;ZLcom/baseflow/geolocator/location/PositionChangedCallback;Lcom/baseflow/geolocator/errors/ErrorCallback;)V
    .locals 1

    const/4 v0, 0x0

    .line 33
    invoke-virtual {p0, p1, p2, v0}, Lcom/baseflow/geolocator/location/GeolocationManager;->createLocationClient(Landroid/content/Context;ZLcom/baseflow/geolocator/location/LocationOptions;)Lcom/baseflow/geolocator/location/LocationClient;

    move-result-object p0

    .line 34
    invoke-interface {p0, p3, p4}, Lcom/baseflow/geolocator/location/LocationClient;->getLastKnownPosition(Lcom/baseflow/geolocator/location/PositionChangedCallback;Lcom/baseflow/geolocator/errors/ErrorCallback;)V

    return-void
.end method

.method public isLocationServiceEnabled(Landroid/content/Context;Lcom/baseflow/geolocator/location/LocationServiceListener;)V
    .locals 2

    if-nez p1, :cond_0

    .line 40
    sget-object v0, Lcom/baseflow/geolocator/errors/ErrorCodes;->locationServicesDisabled:Lcom/baseflow/geolocator/errors/ErrorCodes;

    invoke-interface {p2, v0}, Lcom/baseflow/geolocator/location/LocationServiceListener;->onLocationServiceError(Lcom/baseflow/geolocator/errors/ErrorCodes;)V

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 43
    invoke-virtual {p0, p1, v0, v1}, Lcom/baseflow/geolocator/location/GeolocationManager;->createLocationClient(Landroid/content/Context;ZLcom/baseflow/geolocator/location/LocationOptions;)Lcom/baseflow/geolocator/location/LocationClient;

    move-result-object p0

    .line 44
    invoke-interface {p0, p2}, Lcom/baseflow/geolocator/location/LocationClient;->isLocationServiceEnabled(Lcom/baseflow/geolocator/location/LocationServiceListener;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/baseflow/geolocator/location/GeolocationManager;->locationClients:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/baseflow/geolocator/location/LocationClient;

    .line 92
    invoke-interface {p3, p1, p2}, Lcom/baseflow/geolocator/location/LocationClient;->onActivityResult(II)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public startPositionUpdates(Lcom/baseflow/geolocator/location/LocationClient;Landroid/app/Activity;Lcom/baseflow/geolocator/location/PositionChangedCallback;Lcom/baseflow/geolocator/errors/ErrorCallback;)V
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/baseflow/geolocator/location/GeolocationManager;->locationClients:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    invoke-interface {p1, p2, p3, p4}, Lcom/baseflow/geolocator/location/LocationClient;->startPositionUpdates(Landroid/app/Activity;Lcom/baseflow/geolocator/location/PositionChangedCallback;Lcom/baseflow/geolocator/errors/ErrorCallback;)V

    return-void
.end method

.method public stopPositionUpdates(Lcom/baseflow/geolocator/location/LocationClient;)V
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/baseflow/geolocator/location/GeolocationManager;->locationClients:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 59
    invoke-interface {p1}, Lcom/baseflow/geolocator/location/LocationClient;->stopPositionUpdates()V

    return-void
.end method
