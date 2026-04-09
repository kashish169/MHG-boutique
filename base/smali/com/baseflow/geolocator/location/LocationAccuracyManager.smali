.class public Lcom/baseflow/geolocator/location/LocationAccuracyManager;
.super Ljava/lang/Object;
.source "LocationAccuracyManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLocationAccuracy(Landroid/content/Context;Lcom/baseflow/geolocator/errors/ErrorCallback;)Lcom/baseflow/geolocator/location/LocationAccuracyStatus;
    .locals 0

    .line 15
    const-string p0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p1, p0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    .line 17
    sget-object p0, Lcom/baseflow/geolocator/location/LocationAccuracyStatus;->precise:Lcom/baseflow/geolocator/location/LocationAccuracyStatus;

    return-object p0

    .line 18
    :cond_0
    const-string p0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p1, p0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1

    .line 21
    sget-object p0, Lcom/baseflow/geolocator/location/LocationAccuracyStatus;->reduced:Lcom/baseflow/geolocator/location/LocationAccuracyStatus;

    return-object p0

    .line 23
    :cond_1
    sget-object p0, Lcom/baseflow/geolocator/errors/ErrorCodes;->permissionDenied:Lcom/baseflow/geolocator/errors/ErrorCodes;

    invoke-interface {p2, p0}, Lcom/baseflow/geolocator/errors/ErrorCallback;->onError(Lcom/baseflow/geolocator/errors/ErrorCodes;)V

    const/4 p0, 0x0

    return-object p0
.end method
