.class Lcom/baseflow/geolocator/location/FusedLocationClient$1;
.super Lcom/google/android/gms/location/LocationCallback;
.source "FusedLocationClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baseflow/geolocator/location/FusedLocationClient;-><init>(Landroid/content/Context;Lcom/baseflow/geolocator/location/LocationOptions;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baseflow/geolocator/location/FusedLocationClient;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/baseflow/geolocator/location/FusedLocationClient;Landroid/content/Context;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/baseflow/geolocator/location/FusedLocationClient$1;->this$0:Lcom/baseflow/geolocator/location/FusedLocationClient;

    iput-object p2, p0, Lcom/baseflow/geolocator/location/FusedLocationClient$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/google/android/gms/location/LocationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onLocationAvailability(Lcom/google/android/gms/location/LocationAvailability;)V
    .locals 1

    monitor-enter p0

    .line 77
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/location/LocationAvailability;->isLocationAvailable()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/baseflow/geolocator/location/FusedLocationClient$1;->this$0:Lcom/baseflow/geolocator/location/FusedLocationClient;

    iget-object v0, p0, Lcom/baseflow/geolocator/location/FusedLocationClient$1;->val$context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/baseflow/geolocator/location/FusedLocationClient;->checkLocationService(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 78
    iget-object p1, p0, Lcom/baseflow/geolocator/location/FusedLocationClient$1;->this$0:Lcom/baseflow/geolocator/location/FusedLocationClient;

    invoke-static {p1}, Lcom/baseflow/geolocator/location/FusedLocationClient;->-$$Nest$fgeterrorCallback(Lcom/baseflow/geolocator/location/FusedLocationClient;)Lcom/baseflow/geolocator/errors/ErrorCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 79
    iget-object p1, p0, Lcom/baseflow/geolocator/location/FusedLocationClient$1;->this$0:Lcom/baseflow/geolocator/location/FusedLocationClient;

    invoke-static {p1}, Lcom/baseflow/geolocator/location/FusedLocationClient;->-$$Nest$fgeterrorCallback(Lcom/baseflow/geolocator/location/FusedLocationClient;)Lcom/baseflow/geolocator/errors/ErrorCallback;

    move-result-object p1

    sget-object v0, Lcom/baseflow/geolocator/errors/ErrorCodes;->locationServicesDisabled:Lcom/baseflow/geolocator/errors/ErrorCodes;

    invoke-interface {p1, v0}, Lcom/baseflow/geolocator/errors/ErrorCallback;->onError(Lcom/baseflow/geolocator/errors/ErrorCodes;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized onLocationResult(Lcom/google/android/gms/location/LocationResult;)V
    .locals 1

    monitor-enter p0

    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/baseflow/geolocator/location/FusedLocationClient$1;->this$0:Lcom/baseflow/geolocator/location/FusedLocationClient;

    invoke-static {v0}, Lcom/baseflow/geolocator/location/FusedLocationClient;->-$$Nest$fgetpositionChangedCallback(Lcom/baseflow/geolocator/location/FusedLocationClient;)Lcom/baseflow/geolocator/location/PositionChangedCallback;

    move-result-object v0

    if-nez v0, :cond_1

    .line 59
    const-string p1, "FlutterGeolocator"

    const-string v0, "LocationCallback was called with empty locationResult or no positionChangedCallback was registered."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object p1, p0, Lcom/baseflow/geolocator/location/FusedLocationClient$1;->this$0:Lcom/baseflow/geolocator/location/FusedLocationClient;

    invoke-static {p1}, Lcom/baseflow/geolocator/location/FusedLocationClient;->-$$Nest$fgetfusedLocationProviderClient(Lcom/baseflow/geolocator/location/FusedLocationClient;)Lcom/google/android/gms/location/FusedLocationProviderClient;

    move-result-object p1

    iget-object v0, p0, Lcom/baseflow/geolocator/location/FusedLocationClient$1;->this$0:Lcom/baseflow/geolocator/location/FusedLocationClient;

    invoke-static {v0}, Lcom/baseflow/geolocator/location/FusedLocationClient;->-$$Nest$fgetlocationCallback(Lcom/baseflow/geolocator/location/FusedLocationClient;)Lcom/google/android/gms/location/LocationCallback;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/gms/location/FusedLocationProviderClient;->removeLocationUpdates(Lcom/google/android/gms/location/LocationCallback;)Lcom/google/android/gms/tasks/Task;

    .line 63
    iget-object p1, p0, Lcom/baseflow/geolocator/location/FusedLocationClient$1;->this$0:Lcom/baseflow/geolocator/location/FusedLocationClient;

    invoke-static {p1}, Lcom/baseflow/geolocator/location/FusedLocationClient;->-$$Nest$fgeterrorCallback(Lcom/baseflow/geolocator/location/FusedLocationClient;)Lcom/baseflow/geolocator/errors/ErrorCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 64
    iget-object p1, p0, Lcom/baseflow/geolocator/location/FusedLocationClient$1;->this$0:Lcom/baseflow/geolocator/location/FusedLocationClient;

    invoke-static {p1}, Lcom/baseflow/geolocator/location/FusedLocationClient;->-$$Nest$fgeterrorCallback(Lcom/baseflow/geolocator/location/FusedLocationClient;)Lcom/baseflow/geolocator/errors/ErrorCallback;

    move-result-object p1

    sget-object v0, Lcom/baseflow/geolocator/errors/ErrorCodes;->errorWhileAcquiringPosition:Lcom/baseflow/geolocator/errors/ErrorCodes;

    invoke-interface {p1, v0}, Lcom/baseflow/geolocator/errors/ErrorCallback;->onError(Lcom/baseflow/geolocator/errors/ErrorCodes;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :cond_0
    monitor-exit p0

    return-void

    .line 69
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/gms/location/LocationResult;->getLastLocation()Landroid/location/Location;

    move-result-object p1

    .line 70
    iget-object v0, p0, Lcom/baseflow/geolocator/location/FusedLocationClient$1;->this$0:Lcom/baseflow/geolocator/location/FusedLocationClient;

    invoke-static {v0}, Lcom/baseflow/geolocator/location/FusedLocationClient;->-$$Nest$fgetnmeaClient(Lcom/baseflow/geolocator/location/FusedLocationClient;)Lcom/baseflow/geolocator/location/NmeaClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baseflow/geolocator/location/NmeaClient;->enrichExtrasWithNmea(Landroid/location/Location;)V

    .line 71
    iget-object v0, p0, Lcom/baseflow/geolocator/location/FusedLocationClient$1;->this$0:Lcom/baseflow/geolocator/location/FusedLocationClient;

    invoke-static {v0}, Lcom/baseflow/geolocator/location/FusedLocationClient;->-$$Nest$fgetpositionChangedCallback(Lcom/baseflow/geolocator/location/FusedLocationClient;)Lcom/baseflow/geolocator/location/PositionChangedCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/baseflow/geolocator/location/PositionChangedCallback;->onPositionChanged(Landroid/location/Location;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
