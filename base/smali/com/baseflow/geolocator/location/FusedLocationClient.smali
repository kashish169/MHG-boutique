.class Lcom/baseflow/geolocator/location/FusedLocationClient;
.super Ljava/lang/Object;
.source "FusedLocationClient.java"

# interfaces
.implements Lcom/baseflow/geolocator/location/LocationClient;


# static fields
.field private static final TAG:Ljava/lang/String; = "FlutterGeolocator"


# instance fields
.field private final activityRequestCode:I

.field private final context:Landroid/content/Context;

.field private errorCallback:Lcom/baseflow/geolocator/errors/ErrorCallback;

.field private final fusedLocationProviderClient:Lcom/google/android/gms/location/FusedLocationProviderClient;

.field private final locationCallback:Lcom/google/android/gms/location/LocationCallback;

.field private final locationOptions:Lcom/baseflow/geolocator/location/LocationOptions;

.field private final nmeaClient:Lcom/baseflow/geolocator/location/NmeaClient;

.field private positionChangedCallback:Lcom/baseflow/geolocator/location/PositionChangedCallback;


# direct methods
.method public static synthetic $r8$lambda$RVLn8oGE8geuThBw2CKmekdU95Q(Lcom/baseflow/geolocator/location/FusedLocationClient;Lcom/google/android/gms/location/LocationSettingsResponse;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baseflow/geolocator/location/FusedLocationClient;->lambda$startPositionUpdates$2(Lcom/google/android/gms/location/LocationSettingsResponse;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dj_6D_a1tJb8ZcSl5xMAG3Ejh5I(Lcom/baseflow/geolocator/location/FusedLocationClient;Landroid/app/Activity;Lcom/baseflow/geolocator/errors/ErrorCallback;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/baseflow/geolocator/location/FusedLocationClient;->lambda$startPositionUpdates$3(Landroid/app/Activity;Lcom/baseflow/geolocator/errors/ErrorCallback;Ljava/lang/Exception;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgeterrorCallback(Lcom/baseflow/geolocator/location/FusedLocationClient;)Lcom/baseflow/geolocator/errors/ErrorCallback;
    .locals 0

    iget-object p0, p0, Lcom/baseflow/geolocator/location/FusedLocationClient;->errorCallback:Lcom/baseflow/geolocator/errors/ErrorCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetfusedLocationProviderClient(Lcom/baseflow/geolocator/location/FusedLocationClient;)Lcom/google/android/gms/location/FusedLocationProviderClient;
    .locals 0

    iget-object p0, p0, Lcom/baseflow/geolocator/location/FusedLocationClient;->fusedLocationProviderClient:Lcom/google/android/gms/location/FusedLocationProviderClient;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlocationCallback(Lcom/baseflow/geolocator/location/FusedLocationClient;)Lcom/google/android/gms/location/LocationCallback;
    .locals 0

    iget-object p0, p0, Lcom/baseflow/geolocator/location/FusedLocationClient;->locationCallback:Lcom/google/android/gms/location/LocationCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetnmeaClient(Lcom/baseflow/geolocator/location/FusedLocationClient;)Lcom/baseflow/geolocator/location/NmeaClient;
    .locals 0

    iget-object p0, p0, Lcom/baseflow/geolocator/location/FusedLocationClient;->nmeaClient:Lcom/baseflow/geolocator/location/NmeaClient;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpositionChangedCallback(Lcom/baseflow/geolocator/location/FusedLocationClient;)Lcom/baseflow/geolocator/location/PositionChangedCallback;
    .locals 0

    iget-object p0, p0, Lcom/baseflow/geolocator/location/FusedLocationClient;->positionChangedCallback:Lcom/baseflow/geolocator/location/PositionChangedCallback;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/baseflow/geolocator/location/LocationOptions;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/baseflow/geolocator/location/FusedLocationClient;->context:Landroid/content/Context;

    .line 49
    invoke-static {p1}, Lcom/google/android/gms/location/LocationServices;->getFusedLocationProviderClient(Landroid/content/Context;)Lcom/google/android/gms/location/FusedLocationProviderClient;

    move-result-object v0

    iput-object v0, p0, Lcom/baseflow/geolocator/location/FusedLocationClient;->fusedLocationProviderClient:Lcom/google/android/gms/location/FusedLocationProviderClient;

    .line 50
    iput-object p2, p0, Lcom/baseflow/geolocator/location/FusedLocationClient;->locationOptions:Lcom/baseflow/geolocator/location/LocationOptions;

    .line 51
    new-instance v0, Lcom/baseflow/geolocator/location/NmeaClient;

    invoke-direct {v0, p1, p2}, Lcom/baseflow/geolocator/location/NmeaClient;-><init>(Landroid/content/Context;Lcom/baseflow/geolocator/location/LocationOptions;)V

    iput-object v0, p0, Lcom/baseflow/geolocator/location/FusedLocationClient;->nmeaClient:Lcom/baseflow/geolocator/location/NmeaClient;

    .line 52
    invoke-direct {p0}, Lcom/baseflow/geolocator/location/FusedLocationClient;->generateActivityRequestCode()I

    move-result p2

    iput p2, p0, Lcom/baseflow/geolocator/location/FusedLocationClient;->activityRequestCode:I

    .line 54
    new-instance p2, Lcom/baseflow/geolocator/location/FusedLocationClient$1;

    invoke-direct {p2, p0, p1}, Lcom/baseflow/geolocator/location/FusedLocationClient$1;-><init>(Lcom/baseflow/geolocator/location/FusedLocationClient;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/baseflow/geolocator/location/FusedLocationClient;->locationCallback:Lcom/google/android/gms/location/LocationCallback;

    return-void
.end method

.method private static buildLocationRequest(Lcom/baseflow/geolocator/location/LocationOptions;)Lcom/google/android/gms/location/LocationRequest;
    .locals 3

    .line 87
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-ge v0, v1, :cond_0

    .line 88
    invoke-static {p0}, Lcom/baseflow/geolocator/location/FusedLocationClient;->buildLocationRequestDeprecated(Lcom/baseflow/geolocator/location/LocationOptions;)Lcom/google/android/gms/location/LocationRequest;

    move-result-object p0

    return-object p0

    .line 91
    :cond_0
    new-instance v0, Lcom/google/android/gms/location/LocationRequest$Builder;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/location/LocationRequest$Builder;-><init>(J)V

    if-eqz p0, :cond_1

    .line 94
    invoke-virtual {p0}, Lcom/baseflow/geolocator/location/LocationOptions;->getAccuracy()Lcom/baseflow/geolocator/location/LocationAccuracy;

    move-result-object v1

    invoke-static {v1}, Lcom/baseflow/geolocator/location/FusedLocationClient;->toPriority(Lcom/baseflow/geolocator/location/LocationAccuracy;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/LocationRequest$Builder;->setPriority(I)Lcom/google/android/gms/location/LocationRequest$Builder;

    .line 95
    invoke-virtual {p0}, Lcom/baseflow/geolocator/location/LocationOptions;->getTimeInterval()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/location/LocationRequest$Builder;->setIntervalMillis(J)Lcom/google/android/gms/location/LocationRequest$Builder;

    .line 96
    invoke-virtual {p0}, Lcom/baseflow/geolocator/location/LocationOptions;->getTimeInterval()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/location/LocationRequest$Builder;->setMinUpdateIntervalMillis(J)Lcom/google/android/gms/location/LocationRequest$Builder;

    .line 97
    invoke-virtual {p0}, Lcom/baseflow/geolocator/location/LocationOptions;->getDistanceFilter()J

    move-result-wide v1

    long-to-float p0, v1

    invoke-virtual {v0, p0}, Lcom/google/android/gms/location/LocationRequest$Builder;->setMinUpdateDistanceMeters(F)Lcom/google/android/gms/location/LocationRequest$Builder;

    .line 100
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/location/LocationRequest$Builder;->build()Lcom/google/android/gms/location/LocationRequest;

    move-result-object p0

    return-object p0
.end method

.method private static buildLocationRequestDeprecated(Lcom/baseflow/geolocator/location/LocationOptions;)Lcom/google/android/gms/location/LocationRequest;
    .locals 5

    .line 105
    invoke-static {}, Lcom/google/android/gms/location/LocationRequest;->create()Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    if-eqz p0, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/baseflow/geolocator/location/LocationOptions;->getAccuracy()Lcom/baseflow/geolocator/location/LocationAccuracy;

    move-result-object v1

    invoke-static {v1}, Lcom/baseflow/geolocator/location/FusedLocationClient;->toPriority(Lcom/baseflow/geolocator/location/LocationAccuracy;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/LocationRequest;->setPriority(I)Lcom/google/android/gms/location/LocationRequest;

    .line 109
    invoke-virtual {p0}, Lcom/baseflow/geolocator/location/LocationOptions;->getTimeInterval()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/location/LocationRequest;->setInterval(J)Lcom/google/android/gms/location/LocationRequest;

    .line 110
    invoke-virtual {p0}, Lcom/baseflow/geolocator/location/LocationOptions;->getTimeInterval()J

    move-result-wide v1

    const-wide/16 v3, 0x2

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/location/LocationRequest;->setFastestInterval(J)Lcom/google/android/gms/location/LocationRequest;

    .line 111
    invoke-virtual {p0}, Lcom/baseflow/geolocator/location/LocationOptions;->getDistanceFilter()J

    move-result-wide v1

    long-to-float p0, v1

    invoke-virtual {v0, p0}, Lcom/google/android/gms/location/LocationRequest;->setSmallestDisplacement(F)Lcom/google/android/gms/location/LocationRequest;

    :cond_0
    return-object v0
.end method

.method private static buildLocationSettingsRequest(Lcom/google/android/gms/location/LocationRequest;)Lcom/google/android/gms/location/LocationSettingsRequest;
    .locals 1

    .line 119
    new-instance v0, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;-><init>()V

    .line 120
    invoke-virtual {v0, p0}, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;->addLocationRequest(Lcom/google/android/gms/location/LocationRequest;)Lcom/google/android/gms/location/LocationSettingsRequest$Builder;

    .line 122
    invoke-virtual {v0}, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;->build()Lcom/google/android/gms/location/LocationSettingsRequest;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized generateActivityRequestCode()I
    .locals 2

    monitor-enter p0

    .line 139
    :try_start_0
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    const/high16 v1, 0x10000

    .line 140
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic lambda$getLastKnownPosition$1(Lcom/baseflow/geolocator/errors/ErrorCallback;Ljava/lang/Exception;)V
    .locals 1

    .line 184
    const-string p1, "Geolocator"

    const-string v0, "Error trying to get last the last known GPS location"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_0

    .line 186
    sget-object p1, Lcom/baseflow/geolocator/errors/ErrorCodes;->errorWhileAcquiringPosition:Lcom/baseflow/geolocator/errors/ErrorCodes;

    invoke-interface {p0, p1}, Lcom/baseflow/geolocator/errors/ErrorCallback;->onError(Lcom/baseflow/geolocator/errors/ErrorCodes;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$isLocationServiceEnabled$0(Lcom/baseflow/geolocator/location/LocationServiceListener;Lcom/google/android/gms/tasks/Task;)V
    .locals 3

    .line 157
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    sget-object v0, Lcom/baseflow/geolocator/errors/ErrorCodes;->locationServicesDisabled:Lcom/baseflow/geolocator/errors/ErrorCodes;

    invoke-interface {p0, v0}, Lcom/baseflow/geolocator/location/LocationServiceListener;->onLocationServiceError(Lcom/baseflow/geolocator/errors/ErrorCodes;)V

    .line 161
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/location/LocationSettingsResponse;

    if-eqz p1, :cond_5

    .line 163
    invoke-virtual {p1}, Lcom/google/android/gms/location/LocationSettingsResponse;->getLocationSettingsStates()Lcom/google/android/gms/location/LocationSettingsStates;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 164
    invoke-virtual {p1}, Lcom/google/android/gms/location/LocationSettingsStates;->isGpsUsable()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    if-eqz p1, :cond_2

    .line 166
    invoke-virtual {p1}, Lcom/google/android/gms/location/LocationSettingsStates;->isNetworkLocationUsable()Z

    move-result p1

    if-eqz p1, :cond_2

    move p1, v0

    goto :goto_1

    :cond_2
    move p1, v1

    :goto_1
    if-nez v2, :cond_4

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    .line 167
    :cond_4
    :goto_2
    invoke-interface {p0, v0}, Lcom/baseflow/geolocator/location/LocationServiceListener;->onLocationServiceResult(Z)V

    goto :goto_3

    .line 169
    :cond_5
    sget-object p1, Lcom/baseflow/geolocator/errors/ErrorCodes;->locationServicesDisabled:Lcom/baseflow/geolocator/errors/ErrorCodes;

    invoke-interface {p0, p1}, Lcom/baseflow/geolocator/location/LocationServiceListener;->onLocationServiceError(Lcom/baseflow/geolocator/errors/ErrorCodes;)V

    :goto_3
    return-void
.end method

.method private synthetic lambda$startPositionUpdates$2(Lcom/google/android/gms/location/LocationSettingsResponse;)V
    .locals 0

    .line 229
    iget-object p1, p0, Lcom/baseflow/geolocator/location/FusedLocationClient;->locationOptions:Lcom/baseflow/geolocator/location/LocationOptions;

    invoke-direct {p0, p1}, Lcom/baseflow/geolocator/location/FusedLocationClient;->requestPositionUpdates(Lcom/baseflow/geolocator/location/LocationOptions;)V

    return-void
.end method

.method private synthetic lambda$startPositionUpdates$3(Landroid/app/Activity;Lcom/baseflow/geolocator/errors/ErrorCallback;Ljava/lang/Exception;)V
    .locals 2

    .line 232
    instance-of v0, p3, Lcom/google/android/gms/common/api/ResolvableApiException;

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    .line 236
    sget-object p0, Lcom/baseflow/geolocator/errors/ErrorCodes;->locationServicesDisabled:Lcom/baseflow/geolocator/errors/ErrorCodes;

    invoke-interface {p2, p0}, Lcom/baseflow/geolocator/errors/ErrorCallback;->onError(Lcom/baseflow/geolocator/errors/ErrorCodes;)V

    return-void

    .line 240
    :cond_0
    check-cast p3, Lcom/google/android/gms/common/api/ResolvableApiException;

    .line 241
    invoke-virtual {p3}, Lcom/google/android/gms/common/api/ResolvableApiException;->getStatusCode()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 246
    :try_start_0
    iget p0, p0, Lcom/baseflow/geolocator/location/FusedLocationClient;->activityRequestCode:I

    invoke-virtual {p3, p1, p0}, Lcom/google/android/gms/common/api/ResolvableApiException;->startResolutionForResult(Landroid/app/Activity;I)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 248
    :catch_0
    sget-object p0, Lcom/baseflow/geolocator/errors/ErrorCodes;->locationServicesDisabled:Lcom/baseflow/geolocator/errors/ErrorCodes;

    invoke-interface {p2, p0}, Lcom/baseflow/geolocator/errors/ErrorCallback;->onError(Lcom/baseflow/geolocator/errors/ErrorCodes;)V

    goto :goto_0

    .line 251
    :cond_1
    sget-object p0, Lcom/baseflow/geolocator/errors/ErrorCodes;->locationServicesDisabled:Lcom/baseflow/geolocator/errors/ErrorCodes;

    invoke-interface {p2, p0}, Lcom/baseflow/geolocator/errors/ErrorCallback;->onError(Lcom/baseflow/geolocator/errors/ErrorCodes;)V

    goto :goto_0

    .line 254
    :cond_2
    check-cast p3, Lcom/google/android/gms/common/api/ApiException;

    .line 255
    invoke-virtual {p3}, Lcom/google/android/gms/common/api/ApiException;->getStatusCode()I

    move-result p1

    const/16 p3, 0x2136

    if-ne p1, p3, :cond_3

    .line 257
    iget-object p1, p0, Lcom/baseflow/geolocator/location/FusedLocationClient;->locationOptions:Lcom/baseflow/geolocator/location/LocationOptions;

    invoke-direct {p0, p1}, Lcom/baseflow/geolocator/location/FusedLocationClient;->requestPositionUpdates(Lcom/baseflow/geolocator/location/LocationOptions;)V

    goto :goto_0

    .line 261
    :cond_3
    sget-object p0, Lcom/baseflow/geolocator/errors/ErrorCodes;->locationServicesDisabled:Lcom/baseflow/geolocator/errors/ErrorCodes;

    invoke-interface {p2, p0}, Lcom/baseflow/geolocator/errors/ErrorCallback;->onError(Lcom/baseflow/geolocator/errors/ErrorCodes;)V

    :goto_0
    return-void
.end method

.method private requestPositionUpdates(Lcom/baseflow/geolocator/location/LocationOptions;)V
    .locals 2

    .line 145
    invoke-static {p1}, Lcom/baseflow/geolocator/location/FusedLocationClient;->buildLocationRequest(Lcom/baseflow/geolocator/location/LocationOptions;)Lcom/google/android/gms/location/LocationRequest;

    move-result-object p1

    .line 146
    iget-object v0, p0, Lcom/baseflow/geolocator/location/FusedLocationClient;->nmeaClient:Lcom/baseflow/geolocator/location/NmeaClient;

    invoke-virtual {v0}, Lcom/baseflow/geolocator/location/NmeaClient;->start()V

    .line 147
    iget-object v0, p0, Lcom/baseflow/geolocator/location/FusedLocationClient;->fusedLocationProviderClient:Lcom/google/android/gms/location/FusedLocationProviderClient;

    iget-object p0, p0, Lcom/baseflow/geolocator/location/FusedLocationClient;->locationCallback:Lcom/google/android/gms/location/LocationCallback;

    .line 148
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    .line 147
    invoke-interface {v0, p1, p0, v1}, Lcom/google/android/gms/location/FusedLocationProviderClient;->requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationCallback;Landroid/os/Looper;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method private static toPriority(Lcom/baseflow/geolocator/location/LocationAccuracy;)I
    .locals 1

    .line 126
    sget-object v0, Lcom/baseflow/geolocator/location/FusedLocationClient$2;->$SwitchMap$com$baseflow$geolocator$location$LocationAccuracy:[I

    invoke-virtual {p0}, Lcom/baseflow/geolocator/location/LocationAccuracy;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/16 p0, 0x64

    return p0

    :cond_0
    const/16 p0, 0x66

    return p0

    :cond_1
    const/16 p0, 0x68

    return p0

    :cond_2
    const/16 p0, 0x69

    return p0
.end method


# virtual methods
.method public getLastKnownPosition(Lcom/baseflow/geolocator/location/PositionChangedCallback;Lcom/baseflow/geolocator/errors/ErrorCallback;)V
    .locals 1

    .line 179
    iget-object p0, p0, Lcom/baseflow/geolocator/location/FusedLocationClient;->fusedLocationProviderClient:Lcom/google/android/gms/location/FusedLocationProviderClient;

    .line 180
    invoke-interface {p0}, Lcom/google/android/gms/location/FusedLocationProviderClient;->getLastLocation()Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    .line 181
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/baseflow/geolocator/location/FusedLocationClient$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lcom/baseflow/geolocator/location/FusedLocationClient$$ExternalSyntheticLambda3;-><init>(Lcom/baseflow/geolocator/location/PositionChangedCallback;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    new-instance p1, Lcom/baseflow/geolocator/location/FusedLocationClient$$ExternalSyntheticLambda4;

    invoke-direct {p1, p2}, Lcom/baseflow/geolocator/location/FusedLocationClient$$ExternalSyntheticLambda4;-><init>(Lcom/baseflow/geolocator/errors/ErrorCallback;)V

    .line 182
    invoke-virtual {p0, p1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public isLocationServiceEnabled(Lcom/baseflow/geolocator/location/LocationServiceListener;)V
    .locals 1

    .line 153
    iget-object p0, p0, Lcom/baseflow/geolocator/location/FusedLocationClient;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/google/android/gms/location/LocationServices;->getSettingsClient(Landroid/content/Context;)Lcom/google/android/gms/location/SettingsClient;

    move-result-object p0

    new-instance v0, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;-><init>()V

    .line 154
    invoke-virtual {v0}, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;->build()Lcom/google/android/gms/location/LocationSettingsRequest;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/google/android/gms/location/SettingsClient;->checkLocationSettings(Lcom/google/android/gms/location/LocationSettingsRequest;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    new-instance v0, Lcom/baseflow/geolocator/location/FusedLocationClient$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/baseflow/geolocator/location/FusedLocationClient$$ExternalSyntheticLambda0;-><init>(Lcom/baseflow/geolocator/location/LocationServiceListener;)V

    .line 155
    invoke-virtual {p0, v0}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public onActivityResult(II)Z
    .locals 2

    .line 192
    iget v0, p0, Lcom/baseflow/geolocator/location/FusedLocationClient;->activityRequestCode:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_3

    const/4 p1, -0x1

    if-ne p2, p1, :cond_2

    .line 194
    iget-object p1, p0, Lcom/baseflow/geolocator/location/FusedLocationClient;->locationOptions:Lcom/baseflow/geolocator/location/LocationOptions;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/baseflow/geolocator/location/FusedLocationClient;->positionChangedCallback:Lcom/baseflow/geolocator/location/PositionChangedCallback;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/baseflow/geolocator/location/FusedLocationClient;->errorCallback:Lcom/baseflow/geolocator/errors/ErrorCallback;

    if-nez p2, :cond_0

    goto :goto_0

    .line 200
    :cond_0
    invoke-direct {p0, p1}, Lcom/baseflow/geolocator/location/FusedLocationClient;->requestPositionUpdates(Lcom/baseflow/geolocator/location/LocationOptions;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    return v1

    .line 204
    :cond_2
    iget-object p0, p0, Lcom/baseflow/geolocator/location/FusedLocationClient;->errorCallback:Lcom/baseflow/geolocator/errors/ErrorCallback;

    if-eqz p0, :cond_3

    .line 205
    sget-object p1, Lcom/baseflow/geolocator/errors/ErrorCodes;->locationServicesDisabled:Lcom/baseflow/geolocator/errors/ErrorCodes;

    invoke-interface {p0, p1}, Lcom/baseflow/geolocator/errors/ErrorCallback;->onError(Lcom/baseflow/geolocator/errors/ErrorCodes;)V

    :cond_3
    return v1
.end method

.method public startPositionUpdates(Landroid/app/Activity;Lcom/baseflow/geolocator/location/PositionChangedCallback;Lcom/baseflow/geolocator/errors/ErrorCallback;)V
    .locals 1

    .line 219
    iput-object p2, p0, Lcom/baseflow/geolocator/location/FusedLocationClient;->positionChangedCallback:Lcom/baseflow/geolocator/location/PositionChangedCallback;

    .line 220
    iput-object p3, p0, Lcom/baseflow/geolocator/location/FusedLocationClient;->errorCallback:Lcom/baseflow/geolocator/errors/ErrorCallback;

    .line 222
    iget-object p2, p0, Lcom/baseflow/geolocator/location/FusedLocationClient;->locationOptions:Lcom/baseflow/geolocator/location/LocationOptions;

    invoke-static {p2}, Lcom/baseflow/geolocator/location/FusedLocationClient;->buildLocationRequest(Lcom/baseflow/geolocator/location/LocationOptions;)Lcom/google/android/gms/location/LocationRequest;

    move-result-object p2

    .line 223
    invoke-static {p2}, Lcom/baseflow/geolocator/location/FusedLocationClient;->buildLocationSettingsRequest(Lcom/google/android/gms/location/LocationRequest;)Lcom/google/android/gms/location/LocationSettingsRequest;

    move-result-object p2

    .line 225
    iget-object v0, p0, Lcom/baseflow/geolocator/location/FusedLocationClient;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/location/LocationServices;->getSettingsClient(Landroid/content/Context;)Lcom/google/android/gms/location/SettingsClient;

    move-result-object v0

    .line 227
    invoke-interface {v0, p2}, Lcom/google/android/gms/location/SettingsClient;->checkLocationSettings(Lcom/google/android/gms/location/LocationSettingsRequest;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    new-instance v0, Lcom/baseflow/geolocator/location/FusedLocationClient$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/baseflow/geolocator/location/FusedLocationClient$$ExternalSyntheticLambda1;-><init>(Lcom/baseflow/geolocator/location/FusedLocationClient;)V

    .line 228
    invoke-virtual {p2, v0}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    new-instance v0, Lcom/baseflow/geolocator/location/FusedLocationClient$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1, p3}, Lcom/baseflow/geolocator/location/FusedLocationClient$$ExternalSyntheticLambda2;-><init>(Lcom/baseflow/geolocator/location/FusedLocationClient;Landroid/app/Activity;Lcom/baseflow/geolocator/errors/ErrorCallback;)V

    .line 230
    invoke-virtual {p2, v0}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public stopPositionUpdates()V
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/baseflow/geolocator/location/FusedLocationClient;->nmeaClient:Lcom/baseflow/geolocator/location/NmeaClient;

    invoke-virtual {v0}, Lcom/baseflow/geolocator/location/NmeaClient;->stop()V

    .line 269
    iget-object v0, p0, Lcom/baseflow/geolocator/location/FusedLocationClient;->fusedLocationProviderClient:Lcom/google/android/gms/location/FusedLocationProviderClient;

    iget-object p0, p0, Lcom/baseflow/geolocator/location/FusedLocationClient;->locationCallback:Lcom/google/android/gms/location/LocationCallback;

    invoke-interface {v0, p0}, Lcom/google/android/gms/location/FusedLocationProviderClient;->removeLocationUpdates(Lcom/google/android/gms/location/LocationCallback;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method
