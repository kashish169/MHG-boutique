.class public interface abstract Lcom/baseflow/geolocator/location/LocationClient;
.super Ljava/lang/Object;
.source "LocationClient.java"


# virtual methods
.method public checkLocationService(Landroid/content/Context;)Z
    .locals 1

    .line 25
    const-string p0, "location"

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/LocationManager;

    .line 26
    const-string p1, "gps"

    invoke-virtual {p0, p1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result p1

    .line 27
    const-string v0, "network"

    invoke-virtual {p0, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result p0

    if-nez p1, :cond_1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public abstract getLastKnownPosition(Lcom/baseflow/geolocator/location/PositionChangedCallback;Lcom/baseflow/geolocator/errors/ErrorCallback;)V
.end method

.method public abstract isLocationServiceEnabled(Lcom/baseflow/geolocator/location/LocationServiceListener;)V
.end method

.method public abstract onActivityResult(II)Z
.end method

.method public abstract startPositionUpdates(Landroid/app/Activity;Lcom/baseflow/geolocator/location/PositionChangedCallback;Lcom/baseflow/geolocator/errors/ErrorCallback;)V
.end method

.method public abstract stopPositionUpdates()V
.end method
