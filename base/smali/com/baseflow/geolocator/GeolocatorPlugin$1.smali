.class Lcom/baseflow/geolocator/GeolocatorPlugin$1;
.super Ljava/lang/Object;
.source "GeolocatorPlugin.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baseflow/geolocator/GeolocatorPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baseflow/geolocator/GeolocatorPlugin;


# direct methods
.method constructor <init>(Lcom/baseflow/geolocator/GeolocatorPlugin;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/baseflow/geolocator/GeolocatorPlugin$1;->this$0:Lcom/baseflow/geolocator/GeolocatorPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 39
    const-string p1, "FlutterGeolocator"

    const-string v0, "Geolocator foreground service connected"

    invoke-static {p1, v0}, Lio/flutter/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    instance-of p1, p2, Lcom/baseflow/geolocator/GeolocatorLocationService$LocalBinder;

    if-eqz p1, :cond_0

    .line 41
    iget-object p0, p0, Lcom/baseflow/geolocator/GeolocatorPlugin$1;->this$0:Lcom/baseflow/geolocator/GeolocatorPlugin;

    check-cast p2, Lcom/baseflow/geolocator/GeolocatorLocationService$LocalBinder;

    invoke-virtual {p2}, Lcom/baseflow/geolocator/GeolocatorLocationService$LocalBinder;->getLocationService()Lcom/baseflow/geolocator/GeolocatorLocationService;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/baseflow/geolocator/GeolocatorPlugin;->-$$Nest$minitialize(Lcom/baseflow/geolocator/GeolocatorPlugin;Lcom/baseflow/geolocator/GeolocatorLocationService;)V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 47
    const-string p1, "FlutterGeolocator"

    const-string v0, "Geolocator foreground service disconnected"

    invoke-static {p1, v0}, Lio/flutter/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object p1, p0, Lcom/baseflow/geolocator/GeolocatorPlugin$1;->this$0:Lcom/baseflow/geolocator/GeolocatorPlugin;

    invoke-static {p1}, Lcom/baseflow/geolocator/GeolocatorPlugin;->-$$Nest$fgetforegroundLocationService(Lcom/baseflow/geolocator/GeolocatorPlugin;)Lcom/baseflow/geolocator/GeolocatorLocationService;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 49
    iget-object p1, p0, Lcom/baseflow/geolocator/GeolocatorPlugin$1;->this$0:Lcom/baseflow/geolocator/GeolocatorPlugin;

    invoke-static {p1}, Lcom/baseflow/geolocator/GeolocatorPlugin;->-$$Nest$fgetforegroundLocationService(Lcom/baseflow/geolocator/GeolocatorPlugin;)Lcom/baseflow/geolocator/GeolocatorLocationService;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/baseflow/geolocator/GeolocatorLocationService;->setActivity(Landroid/app/Activity;)V

    .line 50
    iget-object p0, p0, Lcom/baseflow/geolocator/GeolocatorPlugin$1;->this$0:Lcom/baseflow/geolocator/GeolocatorPlugin;

    invoke-static {p0, v0}, Lcom/baseflow/geolocator/GeolocatorPlugin;->-$$Nest$fputforegroundLocationService(Lcom/baseflow/geolocator/GeolocatorPlugin;Lcom/baseflow/geolocator/GeolocatorLocationService;)V

    :cond_0
    return-void
.end method
