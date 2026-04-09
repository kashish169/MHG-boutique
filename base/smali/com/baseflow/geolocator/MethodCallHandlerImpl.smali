.class Lcom/baseflow/geolocator/MethodCallHandlerImpl;
.super Ljava/lang/Object;
.source "MethodCallHandlerImpl.java"

# interfaces
.implements Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;


# static fields
.field private static final TAG:Ljava/lang/String; = "MethodCallHandlerImpl"


# instance fields
.field private activity:Landroid/app/Activity;

.field private channel:Lio/flutter/plugin/common/MethodChannel;

.field private context:Landroid/content/Context;

.field private final geolocationManager:Lcom/baseflow/geolocator/location/GeolocationManager;

.field private final locationAccuracyManager:Lcom/baseflow/geolocator/location/LocationAccuracyManager;

.field final pendingCurrentPositionLocationClients:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/baseflow/geolocator/location/LocationClient;",
            ">;"
        }
    .end annotation
.end field

.field private final permissionManager:Lcom/baseflow/geolocator/permission/PermissionManager;


# direct methods
.method public static synthetic $r8$lambda$0SB9hAYbqBZkpJTI6_liAAurPwc(Lcom/baseflow/geolocator/MethodCallHandlerImpl;[ZLcom/baseflow/geolocator/location/LocationClient;Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;Landroid/location/Location;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/baseflow/geolocator/MethodCallHandlerImpl;->lambda$onGetCurrentPosition$5([ZLcom/baseflow/geolocator/location/LocationClient;Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;Landroid/location/Location;)V

    return-void
.end method

.method public static synthetic $r8$lambda$seVD0zH97POmShMtOqCu_ZxcFdQ(Lcom/baseflow/geolocator/MethodCallHandlerImpl;[ZLcom/baseflow/geolocator/location/LocationClient;Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;Lcom/baseflow/geolocator/errors/ErrorCodes;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/baseflow/geolocator/MethodCallHandlerImpl;->lambda$onGetCurrentPosition$6([ZLcom/baseflow/geolocator/location/LocationClient;Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;Lcom/baseflow/geolocator/errors/ErrorCodes;)V

    return-void
.end method

.method constructor <init>(Lcom/baseflow/geolocator/permission/PermissionManager;Lcom/baseflow/geolocator/location/GeolocationManager;Lcom/baseflow/geolocator/location/LocationAccuracyManager;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/baseflow/geolocator/MethodCallHandlerImpl;->permissionManager:Lcom/baseflow/geolocator/permission/PermissionManager;

    .line 54
    iput-object p2, p0, Lcom/baseflow/geolocator/MethodCallHandlerImpl;->geolocationManager:Lcom/baseflow/geolocator/location/GeolocationManager;

    .line 55
    iput-object p3, p0, Lcom/baseflow/geolocator/MethodCallHandlerImpl;->locationAccuracyManager:Lcom/baseflow/geolocator/location/LocationAccuracyManager;

    .line 56
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/baseflow/geolocator/MethodCallHandlerImpl;->pendingCurrentPositionLocationClients:Ljava/util/Map;

    return-void
.end method

.method private getLocationAccuracy(Lio/flutter/plugin/common/MethodChannel$Result;Landroid/content/Context;)V
    .locals 1

    .line 165
    iget-object p0, p0, Lcom/baseflow/geolocator/MethodCallHandlerImpl;->locationAccuracyManager:Lcom/baseflow/geolocator/location/LocationAccuracyManager;

    new-instance v0, Lcom/baseflow/geolocator/MethodCallHandlerImpl$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/baseflow/geolocator/MethodCallHandlerImpl$$ExternalSyntheticLambda2;-><init>(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 166
    invoke-virtual {p0, p2, v0}, Lcom/baseflow/geolocator/location/LocationAccuracyManager;->getLocationAccuracy(Landroid/content/Context;Lcom/baseflow/geolocator/errors/ErrorCallback;)Lcom/baseflow/geolocator/location/LocationAccuracyStatus;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/baseflow/geolocator/location/LocationAccuracyStatus;->ordinal()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$getLocationAccuracy$2(Lio/flutter/plugin/common/MethodChannel$Result;Lcom/baseflow/geolocator/errors/ErrorCodes;)V
    .locals 2

    .line 169
    invoke-virtual {p1}, Lcom/baseflow/geolocator/errors/ErrorCodes;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/baseflow/geolocator/errors/ErrorCodes;->toDescription()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p0, v0, p1, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$onGetCurrentPosition$5([ZLcom/baseflow/geolocator/location/LocationClient;Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;Landroid/location/Location;)V
    .locals 2

    const/4 v0, 0x0

    .line 245
    aget-boolean v1, p1, v0

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 249
    aput-boolean v1, p1, v0

    .line 250
    iget-object p1, p0, Lcom/baseflow/geolocator/MethodCallHandlerImpl;->geolocationManager:Lcom/baseflow/geolocator/location/GeolocationManager;

    invoke-virtual {p1, p2}, Lcom/baseflow/geolocator/location/GeolocationManager;->stopPositionUpdates(Lcom/baseflow/geolocator/location/LocationClient;)V

    .line 251
    iget-object p0, p0, Lcom/baseflow/geolocator/MethodCallHandlerImpl;->pendingCurrentPositionLocationClients:Ljava/util/Map;

    invoke-interface {p0, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    invoke-static {p5}, Lcom/baseflow/geolocator/location/LocationMapper;->toHashMap(Landroid/location/Location;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p4, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$onGetCurrentPosition$6([ZLcom/baseflow/geolocator/location/LocationClient;Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;Lcom/baseflow/geolocator/errors/ErrorCodes;)V
    .locals 2

    const/4 v0, 0x0

    .line 255
    aget-boolean v1, p1, v0

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 259
    aput-boolean v1, p1, v0

    .line 260
    iget-object p1, p0, Lcom/baseflow/geolocator/MethodCallHandlerImpl;->geolocationManager:Lcom/baseflow/geolocator/location/GeolocationManager;

    invoke-virtual {p1, p2}, Lcom/baseflow/geolocator/location/GeolocationManager;->stopPositionUpdates(Lcom/baseflow/geolocator/location/LocationClient;)V

    .line 261
    iget-object p0, p0, Lcom/baseflow/geolocator/MethodCallHandlerImpl;->pendingCurrentPositionLocationClients:Ljava/util/Map;

    invoke-interface {p0, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    invoke-virtual {p5}, Lcom/baseflow/geolocator/errors/ErrorCodes;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p5}, Lcom/baseflow/geolocator/errors/ErrorCodes;->toDescription()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p4, p0, p1, p2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$onGetLastKnownPosition$3(Lio/flutter/plugin/common/MethodChannel$Result;Landroid/location/Location;)V
    .locals 0

    .line 197
    invoke-static {p1}, Lcom/baseflow/geolocator/location/LocationMapper;->toHashMap(Landroid/location/Location;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p0, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$onGetLastKnownPosition$4(Lio/flutter/plugin/common/MethodChannel$Result;Lcom/baseflow/geolocator/errors/ErrorCodes;)V
    .locals 2

    .line 199
    invoke-virtual {p1}, Lcom/baseflow/geolocator/errors/ErrorCodes;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/baseflow/geolocator/errors/ErrorCodes;->toDescription()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p0, v0, p1, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$onRequestPermission$0(Lio/flutter/plugin/common/MethodChannel$Result;Lcom/baseflow/geolocator/permission/LocationPermission;)V
    .locals 0

    .line 155
    invoke-virtual {p1}, Lcom/baseflow/geolocator/permission/LocationPermission;->toInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$onRequestPermission$1(Lio/flutter/plugin/common/MethodChannel$Result;Lcom/baseflow/geolocator/errors/ErrorCodes;)V
    .locals 2

    .line 157
    invoke-virtual {p1}, Lcom/baseflow/geolocator/errors/ErrorCodes;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/baseflow/geolocator/errors/ErrorCodes;->toDescription()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p0, v0, p1, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private onCancelGetCurrentPosition(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1

    .line 271
    iget-object p1, p1, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    check-cast p1, Ljava/util/Map;

    .line 272
    const-string v0, "requestId"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 274
    iget-object v0, p0, Lcom/baseflow/geolocator/MethodCallHandlerImpl;->pendingCurrentPositionLocationClients:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baseflow/geolocator/location/LocationClient;

    if-eqz v0, :cond_0

    .line 276
    invoke-interface {v0}, Lcom/baseflow/geolocator/location/LocationClient;->stopPositionUpdates()V

    .line 278
    :cond_0
    iget-object p0, p0, Lcom/baseflow/geolocator/MethodCallHandlerImpl;->pendingCurrentPositionLocationClients:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    .line 280
    invoke-interface {p2, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void
.end method

.method private onCheckPermission(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    .line 138
    :try_start_0
    iget-object v0, p0, Lcom/baseflow/geolocator/MethodCallHandlerImpl;->permissionManager:Lcom/baseflow/geolocator/permission/PermissionManager;

    iget-object p0, p0, Lcom/baseflow/geolocator/MethodCallHandlerImpl;->context:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/baseflow/geolocator/permission/PermissionManager;->checkPermissionStatus(Landroid/content/Context;)Lcom/baseflow/geolocator/permission/LocationPermission;

    move-result-object p0

    .line 139
    invoke-virtual {p0}, Lcom/baseflow/geolocator/permission/LocationPermission;->toInt()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/baseflow/geolocator/errors/PermissionUndefinedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 141
    :catch_0
    sget-object p0, Lcom/baseflow/geolocator/errors/ErrorCodes;->permissionDefinitionsNotFound:Lcom/baseflow/geolocator/errors/ErrorCodes;

    .line 142
    invoke-virtual {p0}, Lcom/baseflow/geolocator/errors/ErrorCodes;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baseflow/geolocator/errors/ErrorCodes;->toDescription()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {p1, v0, p0, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private onGetCurrentPosition(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 12

    const/4 v0, 0x0

    .line 211
    :try_start_0
    iget-object v1, p0, Lcom/baseflow/geolocator/MethodCallHandlerImpl;->permissionManager:Lcom/baseflow/geolocator/permission/PermissionManager;

    iget-object v2, p0, Lcom/baseflow/geolocator/MethodCallHandlerImpl;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/baseflow/geolocator/permission/PermissionManager;->hasPermission(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 212
    sget-object p0, Lcom/baseflow/geolocator/errors/ErrorCodes;->permissionDenied:Lcom/baseflow/geolocator/errors/ErrorCodes;

    .line 213
    invoke-virtual {p0}, Lcom/baseflow/geolocator/errors/ErrorCodes;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/baseflow/geolocator/errors/ErrorCodes;->permissionDenied:Lcom/baseflow/geolocator/errors/ErrorCodes;

    .line 214
    invoke-virtual {p1}, Lcom/baseflow/geolocator/errors/ErrorCodes;->toDescription()Ljava/lang/String;

    move-result-object p1

    .line 212
    invoke-interface {p2, p0, p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/baseflow/geolocator/errors/PermissionUndefinedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 227
    :cond_0
    iget-object p1, p1, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    check-cast p1, Ljava/util/Map;

    .line 229
    const-string v0, "forceLocationManager"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 230
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v2

    .line 232
    :goto_0
    invoke-static {p1}, Lcom/baseflow/geolocator/location/LocationOptions;->parseArguments(Ljava/util/Map;)Lcom/baseflow/geolocator/location/LocationOptions;

    move-result-object v1

    .line 233
    const-string v3, "requestId"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v3, 0x1

    .line 235
    new-array v9, v3, [Z

    aput-boolean v2, v9, v2

    .line 237
    iget-object v2, p0, Lcom/baseflow/geolocator/MethodCallHandlerImpl;->geolocationManager:Lcom/baseflow/geolocator/location/GeolocationManager;

    iget-object v3, p0, Lcom/baseflow/geolocator/MethodCallHandlerImpl;->context:Landroid/content/Context;

    .line 238
    invoke-virtual {v2, v3, v0, v1}, Lcom/baseflow/geolocator/location/GeolocationManager;->createLocationClient(Landroid/content/Context;ZLcom/baseflow/geolocator/location/LocationOptions;)Lcom/baseflow/geolocator/location/LocationClient;

    move-result-object v0

    .line 239
    iget-object v1, p0, Lcom/baseflow/geolocator/MethodCallHandlerImpl;->pendingCurrentPositionLocationClients:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    iget-object v1, p0, Lcom/baseflow/geolocator/MethodCallHandlerImpl;->geolocationManager:Lcom/baseflow/geolocator/location/GeolocationManager;

    iget-object v2, p0, Lcom/baseflow/geolocator/MethodCallHandlerImpl;->activity:Landroid/app/Activity;

    new-instance v10, Lcom/baseflow/geolocator/MethodCallHandlerImpl$$ExternalSyntheticLambda0;

    move-object v3, v10

    move-object v4, p0

    move-object v5, v9

    move-object v6, v0

    move-object v7, p1

    move-object v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/baseflow/geolocator/MethodCallHandlerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/baseflow/geolocator/MethodCallHandlerImpl;[ZLcom/baseflow/geolocator/location/LocationClient;Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V

    new-instance v11, Lcom/baseflow/geolocator/MethodCallHandlerImpl$$ExternalSyntheticLambda1;

    move-object v3, v11

    invoke-direct/range {v3 .. v8}, Lcom/baseflow/geolocator/MethodCallHandlerImpl$$ExternalSyntheticLambda1;-><init>(Lcom/baseflow/geolocator/MethodCallHandlerImpl;[ZLcom/baseflow/geolocator/location/LocationClient;Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V

    invoke-virtual {v1, v0, v2, v10, v11}, Lcom/baseflow/geolocator/location/GeolocationManager;->startPositionUpdates(Lcom/baseflow/geolocator/location/LocationClient;Landroid/app/Activity;Lcom/baseflow/geolocator/location/PositionChangedCallback;Lcom/baseflow/geolocator/errors/ErrorCallback;)V

    return-void

    .line 219
    :catch_0
    sget-object p0, Lcom/baseflow/geolocator/errors/ErrorCodes;->permissionDefinitionsNotFound:Lcom/baseflow/geolocator/errors/ErrorCodes;

    .line 220
    invoke-virtual {p0}, Lcom/baseflow/geolocator/errors/ErrorCodes;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/baseflow/geolocator/errors/ErrorCodes;->permissionDefinitionsNotFound:Lcom/baseflow/geolocator/errors/ErrorCodes;

    .line 221
    invoke-virtual {p1}, Lcom/baseflow/geolocator/errors/ErrorCodes;->toDescription()Ljava/lang/String;

    move-result-object p1

    .line 219
    invoke-interface {p2, p0, p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private onGetLastKnownPosition(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 3

    const/4 v0, 0x0

    .line 177
    :try_start_0
    iget-object v1, p0, Lcom/baseflow/geolocator/MethodCallHandlerImpl;->permissionManager:Lcom/baseflow/geolocator/permission/PermissionManager;

    iget-object v2, p0, Lcom/baseflow/geolocator/MethodCallHandlerImpl;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/baseflow/geolocator/permission/PermissionManager;->hasPermission(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 178
    sget-object p0, Lcom/baseflow/geolocator/errors/ErrorCodes;->permissionDenied:Lcom/baseflow/geolocator/errors/ErrorCodes;

    .line 179
    invoke-virtual {p0}, Lcom/baseflow/geolocator/errors/ErrorCodes;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/baseflow/geolocator/errors/ErrorCodes;->permissionDenied:Lcom/baseflow/geolocator/errors/ErrorCodes;

    .line 180
    invoke-virtual {p1}, Lcom/baseflow/geolocator/errors/ErrorCodes;->toDescription()Ljava/lang/String;

    move-result-object p1

    .line 178
    invoke-interface {p2, p0, p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/baseflow/geolocator/errors/PermissionUndefinedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 192
    :cond_0
    const-string v0, "forceLocationManager"

    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    .line 194
    iget-object v0, p0, Lcom/baseflow/geolocator/MethodCallHandlerImpl;->geolocationManager:Lcom/baseflow/geolocator/location/GeolocationManager;

    iget-object p0, p0, Lcom/baseflow/geolocator/MethodCallHandlerImpl;->context:Landroid/content/Context;

    if-eqz p1, :cond_1

    .line 196
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    new-instance v1, Lcom/baseflow/geolocator/MethodCallHandlerImpl$$ExternalSyntheticLambda5;

    invoke-direct {v1, p2}, Lcom/baseflow/geolocator/MethodCallHandlerImpl$$ExternalSyntheticLambda5;-><init>(Lio/flutter/plugin/common/MethodChannel$Result;)V

    new-instance v2, Lcom/baseflow/geolocator/MethodCallHandlerImpl$$ExternalSyntheticLambda6;

    invoke-direct {v2, p2}, Lcom/baseflow/geolocator/MethodCallHandlerImpl$$ExternalSyntheticLambda6;-><init>(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 194
    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/baseflow/geolocator/location/GeolocationManager;->getLastKnownPosition(Landroid/content/Context;ZLcom/baseflow/geolocator/location/PositionChangedCallback;Lcom/baseflow/geolocator/errors/ErrorCallback;)V

    return-void

    .line 185
    :catch_0
    sget-object p0, Lcom/baseflow/geolocator/errors/ErrorCodes;->permissionDefinitionsNotFound:Lcom/baseflow/geolocator/errors/ErrorCodes;

    .line 186
    invoke-virtual {p0}, Lcom/baseflow/geolocator/errors/ErrorCodes;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/baseflow/geolocator/errors/ErrorCodes;->permissionDefinitionsNotFound:Lcom/baseflow/geolocator/errors/ErrorCodes;

    .line 187
    invoke-virtual {p1}, Lcom/baseflow/geolocator/errors/ErrorCodes;->toDescription()Ljava/lang/String;

    move-result-object p1

    .line 185
    invoke-interface {p2, p0, p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private onIsLocationServiceEnabled(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/baseflow/geolocator/MethodCallHandlerImpl;->geolocationManager:Lcom/baseflow/geolocator/location/GeolocationManager;

    iget-object p0, p0, Lcom/baseflow/geolocator/MethodCallHandlerImpl;->context:Landroid/content/Context;

    new-instance v1, Lcom/baseflow/geolocator/location/FlutterLocationServiceListener;

    invoke-direct {v1, p1}, Lcom/baseflow/geolocator/location/FlutterLocationServiceListener;-><init>(Lio/flutter/plugin/common/MethodChannel$Result;)V

    invoke-virtual {v0, p0, v1}, Lcom/baseflow/geolocator/location/GeolocationManager;->isLocationServiceEnabled(Landroid/content/Context;Lcom/baseflow/geolocator/location/LocationServiceListener;)V

    return-void
.end method

.method private onRequestPermission(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 3

    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/baseflow/geolocator/MethodCallHandlerImpl;->permissionManager:Lcom/baseflow/geolocator/permission/PermissionManager;

    iget-object p0, p0, Lcom/baseflow/geolocator/MethodCallHandlerImpl;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/baseflow/geolocator/MethodCallHandlerImpl$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1}, Lcom/baseflow/geolocator/MethodCallHandlerImpl$$ExternalSyntheticLambda3;-><init>(Lio/flutter/plugin/common/MethodChannel$Result;)V

    new-instance v2, Lcom/baseflow/geolocator/MethodCallHandlerImpl$$ExternalSyntheticLambda4;

    invoke-direct {v2, p1}, Lcom/baseflow/geolocator/MethodCallHandlerImpl$$ExternalSyntheticLambda4;-><init>(Lio/flutter/plugin/common/MethodChannel$Result;)V

    invoke-virtual {v0, p0, v1, v2}, Lcom/baseflow/geolocator/permission/PermissionManager;->requestPermission(Landroid/app/Activity;Lcom/baseflow/geolocator/permission/PermissionResultCallback;Lcom/baseflow/geolocator/errors/ErrorCallback;)V
    :try_end_0
    .catch Lcom/baseflow/geolocator/errors/PermissionUndefinedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 159
    :catch_0
    sget-object p0, Lcom/baseflow/geolocator/errors/ErrorCodes;->permissionDefinitionsNotFound:Lcom/baseflow/geolocator/errors/ErrorCodes;

    .line 160
    invoke-virtual {p0}, Lcom/baseflow/geolocator/errors/ErrorCodes;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baseflow/geolocator/errors/ErrorCodes;->toDescription()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {p1, v0, p0, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 3

    .line 63
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "cancelGetCurrentPosition"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v2, 0x8

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "getLocationAccuracy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x7

    goto :goto_0

    :sswitch_2
    const-string v1, "requestPermission"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x6

    goto :goto_0

    :sswitch_3
    const-string v1, "checkPermission"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_4
    const-string v1, "isLocationServiceEnabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_5
    const-string v1, "openAppSettings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_6
    const-string v1, "openLocationSettings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_7
    const-string v1, "getLastKnownPosition"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_8
    const-string v1, "getCurrentPosition"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 94
    invoke-interface {p2}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V

    goto :goto_1

    .line 83
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/baseflow/geolocator/MethodCallHandlerImpl;->onCancelGetCurrentPosition(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_1

    .line 77
    :pswitch_1
    iget-object p1, p0, Lcom/baseflow/geolocator/MethodCallHandlerImpl;->context:Landroid/content/Context;

    invoke-direct {p0, p2, p1}, Lcom/baseflow/geolocator/MethodCallHandlerImpl;->getLocationAccuracy(Lio/flutter/plugin/common/MethodChannel$Result;Landroid/content/Context;)V

    goto :goto_1

    .line 71
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/baseflow/geolocator/MethodCallHandlerImpl;->onRequestPermission(Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_1

    .line 65
    :pswitch_3
    invoke-direct {p0, p2}, Lcom/baseflow/geolocator/MethodCallHandlerImpl;->onCheckPermission(Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_1

    .line 68
    :pswitch_4
    invoke-direct {p0, p2}, Lcom/baseflow/geolocator/MethodCallHandlerImpl;->onIsLocationServiceEnabled(Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_1

    .line 86
    :pswitch_5
    iget-object p0, p0, Lcom/baseflow/geolocator/MethodCallHandlerImpl;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/baseflow/geolocator/utils/Utils;->openAppSettings(Landroid/content/Context;)Z

    move-result p0

    .line 87
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p2, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_1

    .line 90
    :pswitch_6
    iget-object p0, p0, Lcom/baseflow/geolocator/MethodCallHandlerImpl;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/baseflow/geolocator/utils/Utils;->openLocationSettings(Landroid/content/Context;)Z

    move-result p0

    .line 91
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p2, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_1

    .line 74
    :pswitch_7
    invoke-direct {p0, p1, p2}, Lcom/baseflow/geolocator/MethodCallHandlerImpl;->onGetLastKnownPosition(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_1

    .line 80
    :pswitch_8
    invoke-direct {p0, p1, p2}, Lcom/baseflow/geolocator/MethodCallHandlerImpl;->onGetCurrentPosition(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x68b9fc74 -> :sswitch_8
        -0x44f2ea20 -> :sswitch_7
        -0x30f92e9e -> :sswitch_6
        0x14b278ba -> :sswitch_5
        0x1538bfab -> :sswitch_4
        0x28e6dcf7 -> :sswitch_3
        0x2c7fedbe -> :sswitch_2
        0x34469f44 -> :sswitch_1
        0x69c703a6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method setActivity(Landroid/app/Activity;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/baseflow/geolocator/MethodCallHandlerImpl;->activity:Landroid/app/Activity;

    return-void
.end method

.method startListening(Landroid/content/Context;Lio/flutter/plugin/common/BinaryMessenger;)V
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/baseflow/geolocator/MethodCallHandlerImpl;->channel:Lio/flutter/plugin/common/MethodChannel;

    if-eqz v0, :cond_0

    .line 108
    const-string v0, "MethodCallHandlerImpl"

    const-string v1, "Setting a method call handler before the last was disposed."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-virtual {p0}, Lcom/baseflow/geolocator/MethodCallHandlerImpl;->stopListening()V

    .line 112
    :cond_0
    new-instance v0, Lio/flutter/plugin/common/MethodChannel;

    const-string v1, "flutter.baseflow.com/geolocator_android"

    invoke-direct {v0, p2, v1}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/baseflow/geolocator/MethodCallHandlerImpl;->channel:Lio/flutter/plugin/common/MethodChannel;

    .line 113
    invoke-virtual {v0, p0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 114
    iput-object p1, p0, Lcom/baseflow/geolocator/MethodCallHandlerImpl;->context:Landroid/content/Context;

    return-void
.end method

.method stopListening()V
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/baseflow/geolocator/MethodCallHandlerImpl;->channel:Lio/flutter/plugin/common/MethodChannel;

    if-nez v0, :cond_0

    .line 124
    const-string p0, "MethodCallHandlerImpl"

    const-string v0, "Tried to stop listening when no MethodChannel had been initialized."

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 128
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 129
    iput-object v1, p0, Lcom/baseflow/geolocator/MethodCallHandlerImpl;->channel:Lio/flutter/plugin/common/MethodChannel;

    return-void
.end method
