.class public Lcom/baseflow/geolocator/permission/PermissionManager;
.super Ljava/lang/Object;
.source "PermissionManager.java"

# interfaces
.implements Lio/flutter/plugin/common/PluginRegistry$RequestPermissionsResultListener;


# static fields
.field private static final PERMISSION_REQUEST_CODE:I = 0x6d


# instance fields
.field private activity:Landroid/app/Activity;

.field private errorCallback:Lcom/baseflow/geolocator/errors/ErrorCallback;

.field private resultCallback:Lcom/baseflow/geolocator/permission/PermissionResultCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getLocationPermissionsFromManifest(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baseflow/geolocator/errors/PermissionUndefinedException;
        }
    .end annotation

    .line 199
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v0}, Lcom/baseflow/geolocator/permission/PermissionUtils;->hasPermissionInManifest(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 201
    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p0, v2}, Lcom/baseflow/geolocator/permission/PermissionUtils;->hasPermissionInManifest(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-nez v1, :cond_1

    if-eqz p0, :cond_0

    goto :goto_0

    .line 205
    :cond_0
    new-instance p0, Lcom/baseflow/geolocator/errors/PermissionUndefinedException;

    invoke-direct {p0}, Lcom/baseflow/geolocator/errors/PermissionUndefinedException;-><init>()V

    throw p0

    .line 208
    :cond_1
    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_2

    .line 211
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz p0, :cond_3

    .line 215
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-object v3
.end method

.method private hasBackgroundAccess([Ljava/lang/String;[I)Z
    .locals 0

    .line 186
    const-string p0, "android.permission.ACCESS_BACKGROUND_LOCATION"

    .line 187
    invoke-static {p1, p0}, Lcom/baseflow/geolocator/permission/PermissionManager;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_0

    .line 188
    aget p0, p2, p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static indexOf([Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)I"
        }
    .end annotation

    .line 193
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public checkPermissionStatus(Landroid/content/Context;)Lcom/baseflow/geolocator/permission/LocationPermission;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baseflow/geolocator/errors/PermissionUndefinedException;
        }
    .end annotation

    .line 33
    invoke-static {p1}, Lcom/baseflow/geolocator/permission/PermissionManager;->getLocationPermissionsFromManifest(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    .line 42
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 43
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 59
    const-string p0, "android.permission.ACCESS_BACKGROUND_LOCATION"

    invoke-static {p1, p0}, Lcom/baseflow/geolocator/permission/PermissionUtils;->hasPermissionInManifest(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 62
    sget-object p0, Lcom/baseflow/geolocator/permission/LocationPermission;->whileInUse:Lcom/baseflow/geolocator/permission/LocationPermission;

    return-object p0

    .line 66
    :cond_1
    invoke-static {p1, p0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_2

    .line 68
    sget-object p0, Lcom/baseflow/geolocator/permission/LocationPermission;->always:Lcom/baseflow/geolocator/permission/LocationPermission;

    return-object p0

    .line 71
    :cond_2
    sget-object p0, Lcom/baseflow/geolocator/permission/LocationPermission;->whileInUse:Lcom/baseflow/geolocator/permission/LocationPermission;

    return-object p0

    .line 51
    :cond_3
    sget-object p0, Lcom/baseflow/geolocator/permission/LocationPermission;->denied:Lcom/baseflow/geolocator/permission/LocationPermission;

    return-object p0
.end method

.method public hasPermission(Landroid/content/Context;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baseflow/geolocator/errors/PermissionUndefinedException;
        }
    .end annotation

    .line 222
    invoke-virtual {p0, p1}, Lcom/baseflow/geolocator/permission/PermissionManager;->checkPermissionStatus(Landroid/content/Context;)Lcom/baseflow/geolocator/permission/LocationPermission;

    move-result-object p0

    .line 224
    sget-object p1, Lcom/baseflow/geolocator/permission/LocationPermission;->whileInUse:Lcom/baseflow/geolocator/permission/LocationPermission;

    if-eq p0, p1, :cond_1

    sget-object p1, Lcom/baseflow/geolocator/permission/LocationPermission;->always:Lcom/baseflow/geolocator/permission/LocationPermission;

    if-ne p0, p1, :cond_0

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

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)Z
    .locals 9

    const/16 v0, 0x6d

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    return v1

    .line 115
    :cond_0
    iget-object p1, p0, Lcom/baseflow/geolocator/permission/PermissionManager;->activity:Landroid/app/Activity;

    const-string v0, "Geolocator"

    if-nez p1, :cond_2

    .line 116
    const-string p1, "Trying to process permission result without an valid Activity instance"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object p0, p0, Lcom/baseflow/geolocator/permission/PermissionManager;->errorCallback:Lcom/baseflow/geolocator/errors/ErrorCallback;

    if-eqz p0, :cond_1

    .line 118
    sget-object p1, Lcom/baseflow/geolocator/errors/ErrorCodes;->activityMissing:Lcom/baseflow/geolocator/errors/ErrorCodes;

    invoke-interface {p0, p1}, Lcom/baseflow/geolocator/errors/ErrorCallback;->onError(Lcom/baseflow/geolocator/errors/ErrorCodes;)V

    :cond_1
    return v1

    .line 126
    :cond_2
    :try_start_0
    invoke-static {p1}, Lcom/baseflow/geolocator/permission/PermissionManager;->getLocationPermissionsFromManifest(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Lcom/baseflow/geolocator/errors/PermissionUndefinedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    array-length v2, p3

    if-nez v2, :cond_3

    .line 136
    const-string p0, "The grantResults array is empty. This can happen when the user cancels the permission request"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 142
    :cond_3
    sget-object v2, Lcom/baseflow/geolocator/permission/LocationPermission;->denied:Lcom/baseflow/geolocator/permission/LocationPermission;

    .line 147
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v3, -0x1

    move v4, v1

    move v5, v4

    :cond_4
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 148
    invoke-static {p2, v6}, Lcom/baseflow/geolocator/permission/PermissionManager;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v8

    if-ltz v8, :cond_5

    move v4, v7

    .line 152
    :cond_5
    aget v8, p3, v8

    if-nez v8, :cond_6

    move v3, v1

    .line 155
    :cond_6
    iget-object v8, p0, Lcom/baseflow/geolocator/permission/PermissionManager;->activity:Landroid/app/Activity;

    invoke-static {v8, v6}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    move v5, v7

    goto :goto_0

    :cond_7
    if-nez v4, :cond_8

    .line 161
    const-string p0, "Location permissions not part of permissions send to onRequestPermissionsResult method."

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_8
    if-nez v3, :cond_a

    .line 168
    invoke-direct {p0, p2, p3}, Lcom/baseflow/geolocator/permission/PermissionManager;->hasBackgroundAccess([Ljava/lang/String;[I)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 169
    sget-object p1, Lcom/baseflow/geolocator/permission/LocationPermission;->always:Lcom/baseflow/geolocator/permission/LocationPermission;

    :goto_1
    move-object v2, p1

    goto :goto_2

    .line 170
    :cond_9
    sget-object p1, Lcom/baseflow/geolocator/permission/LocationPermission;->whileInUse:Lcom/baseflow/geolocator/permission/LocationPermission;

    goto :goto_1

    :cond_a
    if-nez v5, :cond_b

    .line 173
    sget-object v2, Lcom/baseflow/geolocator/permission/LocationPermission;->deniedForever:Lcom/baseflow/geolocator/permission/LocationPermission;

    .line 177
    :cond_b
    :goto_2
    iget-object p0, p0, Lcom/baseflow/geolocator/permission/PermissionManager;->resultCallback:Lcom/baseflow/geolocator/permission/PermissionResultCallback;

    if-eqz p0, :cond_c

    .line 178
    invoke-interface {p0, v2}, Lcom/baseflow/geolocator/permission/PermissionResultCallback;->onResult(Lcom/baseflow/geolocator/permission/LocationPermission;)V

    :cond_c
    return v7

    .line 128
    :catch_0
    iget-object p0, p0, Lcom/baseflow/geolocator/permission/PermissionManager;->errorCallback:Lcom/baseflow/geolocator/errors/ErrorCallback;

    if-eqz p0, :cond_d

    .line 129
    sget-object p1, Lcom/baseflow/geolocator/errors/ErrorCodes;->permissionDefinitionsNotFound:Lcom/baseflow/geolocator/errors/ErrorCodes;

    invoke-interface {p0, p1}, Lcom/baseflow/geolocator/errors/ErrorCallback;->onError(Lcom/baseflow/geolocator/errors/ErrorCodes;)V

    :cond_d
    return v1
.end method

.method public requestPermission(Landroid/app/Activity;Lcom/baseflow/geolocator/permission/PermissionResultCallback;Lcom/baseflow/geolocator/errors/ErrorCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baseflow/geolocator/errors/PermissionUndefinedException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 79
    sget-object p0, Lcom/baseflow/geolocator/errors/ErrorCodes;->activityMissing:Lcom/baseflow/geolocator/errors/ErrorCodes;

    invoke-interface {p3, p0}, Lcom/baseflow/geolocator/errors/ErrorCallback;->onError(Lcom/baseflow/geolocator/errors/ErrorCodes;)V

    return-void

    .line 89
    :cond_0
    invoke-static {p1}, Lcom/baseflow/geolocator/permission/PermissionManager;->getLocationPermissionsFromManifest(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 92
    const-string v1, "android.permission.ACCESS_BACKGROUND_LOCATION"

    invoke-static {p1, v1}, Lcom/baseflow/geolocator/permission/PermissionUtils;->hasPermissionInManifest(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 94
    invoke-virtual {p0, p1}, Lcom/baseflow/geolocator/permission/PermissionManager;->checkPermissionStatus(Landroid/content/Context;)Lcom/baseflow/geolocator/permission/LocationPermission;

    move-result-object v2

    .line 95
    sget-object v3, Lcom/baseflow/geolocator/permission/LocationPermission;->whileInUse:Lcom/baseflow/geolocator/permission/LocationPermission;

    if-ne v2, v3, :cond_1

    .line 96
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    :cond_1
    iput-object p3, p0, Lcom/baseflow/geolocator/permission/PermissionManager;->errorCallback:Lcom/baseflow/geolocator/errors/ErrorCallback;

    .line 101
    iput-object p2, p0, Lcom/baseflow/geolocator/permission/PermissionManager;->resultCallback:Lcom/baseflow/geolocator/permission/PermissionResultCallback;

    .line 102
    iput-object p1, p0, Lcom/baseflow/geolocator/permission/PermissionManager;->activity:Landroid/app/Activity;

    const/4 p0, 0x0

    .line 104
    new-array p0, p0, [Ljava/lang/String;

    .line 105
    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    const/16 p2, 0x6d

    .line 104
    invoke-static {p1, p0, p2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method
