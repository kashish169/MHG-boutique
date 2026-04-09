.class public Lcom/baseflow/geolocator/location/LocationServiceStatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LocationServiceStatusReceiver.java"


# instance fields
.field private final events:Lio/flutter/plugin/common/EventChannel$EventSink;

.field private lastKnownServiceStatus:Lcom/baseflow/geolocator/location/ServiceStatus;


# direct methods
.method public constructor <init>(Lio/flutter/plugin/common/EventChannel$EventSink;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/baseflow/geolocator/location/LocationServiceStatusReceiver;->events:Lio/flutter/plugin/common/EventChannel$EventSink;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 23
    const-string v0, "android.location.PROVIDERS_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 25
    const-string p2, "location"

    .line 26
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    .line 27
    const-string p2, "gps"

    invoke-virtual {p1, p2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result p2

    .line 28
    const-string v0, "network"

    .line 29
    invoke-virtual {p1, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result p1

    if-nez p2, :cond_2

    if-eqz p1, :cond_0

    goto :goto_0

    .line 42
    :cond_0
    iget-object p1, p0, Lcom/baseflow/geolocator/location/LocationServiceStatusReceiver;->lastKnownServiceStatus:Lcom/baseflow/geolocator/location/ServiceStatus;

    if-eqz p1, :cond_1

    sget-object p2, Lcom/baseflow/geolocator/location/ServiceStatus;->enabled:Lcom/baseflow/geolocator/location/ServiceStatus;

    if-ne p1, p2, :cond_4

    .line 43
    :cond_1
    sget-object p1, Lcom/baseflow/geolocator/location/ServiceStatus;->disabled:Lcom/baseflow/geolocator/location/ServiceStatus;

    iput-object p1, p0, Lcom/baseflow/geolocator/location/LocationServiceStatusReceiver;->lastKnownServiceStatus:Lcom/baseflow/geolocator/location/ServiceStatus;

    .line 44
    iget-object p0, p0, Lcom/baseflow/geolocator/location/LocationServiceStatusReceiver;->events:Lio/flutter/plugin/common/EventChannel$EventSink;

    sget-object p1, Lcom/baseflow/geolocator/location/ServiceStatus;->disabled:Lcom/baseflow/geolocator/location/ServiceStatus;

    invoke-virtual {p1}, Lcom/baseflow/geolocator/location/ServiceStatus;->ordinal()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lio/flutter/plugin/common/EventChannel$EventSink;->success(Ljava/lang/Object;)V

    goto :goto_1

    .line 37
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/baseflow/geolocator/location/LocationServiceStatusReceiver;->lastKnownServiceStatus:Lcom/baseflow/geolocator/location/ServiceStatus;

    if-eqz p1, :cond_3

    sget-object p2, Lcom/baseflow/geolocator/location/ServiceStatus;->disabled:Lcom/baseflow/geolocator/location/ServiceStatus;

    if-ne p1, p2, :cond_4

    .line 38
    :cond_3
    sget-object p1, Lcom/baseflow/geolocator/location/ServiceStatus;->enabled:Lcom/baseflow/geolocator/location/ServiceStatus;

    iput-object p1, p0, Lcom/baseflow/geolocator/location/LocationServiceStatusReceiver;->lastKnownServiceStatus:Lcom/baseflow/geolocator/location/ServiceStatus;

    .line 39
    iget-object p0, p0, Lcom/baseflow/geolocator/location/LocationServiceStatusReceiver;->events:Lio/flutter/plugin/common/EventChannel$EventSink;

    sget-object p1, Lcom/baseflow/geolocator/location/ServiceStatus;->enabled:Lcom/baseflow/geolocator/location/ServiceStatus;

    invoke-virtual {p1}, Lcom/baseflow/geolocator/location/ServiceStatus;->ordinal()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lio/flutter/plugin/common/EventChannel$EventSink;->success(Ljava/lang/Object;)V

    :cond_4
    :goto_1
    return-void
.end method
