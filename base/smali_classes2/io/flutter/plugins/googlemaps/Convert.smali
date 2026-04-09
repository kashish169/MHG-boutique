.class Lio/flutter/plugins/googlemaps/Convert;
.super Ljava/lang/Object;
.source "Convert.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static cameraPositionToJson(Lcom/google/android/gms/maps/model/CameraPosition;)Ljava/lang/Object;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 155
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 156
    iget v1, p0, Lcom/google/android/gms/maps/model/CameraPosition;->bearing:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "bearing"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    iget-object v1, p0, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    invoke-static {v1}, Lio/flutter/plugins/googlemaps/Convert;->latLngToJson(Lcom/google/android/gms/maps/model/LatLng;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "target"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    iget v1, p0, Lcom/google/android/gms/maps/model/CameraPosition;->tilt:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "tilt"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    iget p0, p0, Lcom/google/android/gms/maps/model/CameraPosition;->zoom:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const-string v1, "zoom"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method static circleIdToJson(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 201
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 202
    const-string v1, "circleId"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static getBitmapFromBytes(Ljava/util/List;)Lcom/google/android/gms/maps/model/BitmapDescriptor;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)",
            "Lcom/google/android/gms/maps/model/BitmapDescriptor;"
        }
    .end annotation

    .line 74
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 76
    :try_start_0
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lio/flutter/plugins/googlemaps/Convert;->toBitmap(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 77
    invoke-static {p0}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unable to interpret bytes as a valid image."

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 82
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "fromBytes should have exactly one argument, interpretTileOverlayOptions the bytes. Got: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static interpretCircleOptions(Ljava/lang/Object;Lio/flutter/plugins/googlemaps/CircleOptionsSink;)Ljava/lang/String;
    .locals 2

    .line 555
    invoke-static {p0}, Lio/flutter/plugins/googlemaps/Convert;->toMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    .line 556
    const-string v0, "consumeTapEvents"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 558
    invoke-static {v0}, Lio/flutter/plugins/googlemaps/Convert;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {p1, v0}, Lio/flutter/plugins/googlemaps/CircleOptionsSink;->setConsumeTapEvents(Z)V

    .line 560
    :cond_0
    const-string v0, "fillColor"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 562
    invoke-static {v0}, Lio/flutter/plugins/googlemaps/Convert;->toInt(Ljava/lang/Object;)I

    move-result v0

    invoke-interface {p1, v0}, Lio/flutter/plugins/googlemaps/CircleOptionsSink;->setFillColor(I)V

    .line 564
    :cond_1
    const-string v0, "strokeColor"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 566
    invoke-static {v0}, Lio/flutter/plugins/googlemaps/Convert;->toInt(Ljava/lang/Object;)I

    move-result v0

    invoke-interface {p1, v0}, Lio/flutter/plugins/googlemaps/CircleOptionsSink;->setStrokeColor(I)V

    .line 568
    :cond_2
    const-string v0, "visible"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 570
    invoke-static {v0}, Lio/flutter/plugins/googlemaps/Convert;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {p1, v0}, Lio/flutter/plugins/googlemaps/CircleOptionsSink;->setVisible(Z)V

    .line 572
    :cond_3
    const-string v0, "strokeWidth"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 574
    invoke-static {v0}, Lio/flutter/plugins/googlemaps/Convert;->toInt(Ljava/lang/Object;)I

    move-result v0

    int-to-float v0, v0

    invoke-interface {p1, v0}, Lio/flutter/plugins/googlemaps/CircleOptionsSink;->setStrokeWidth(F)V

    .line 576
    :cond_4
    const-string v0, "zIndex"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 578
    invoke-static {v0}, Lio/flutter/plugins/googlemaps/Convert;->toFloat(Ljava/lang/Object;)F

    move-result v0

    invoke-interface {p1, v0}, Lio/flutter/plugins/googlemaps/CircleOptionsSink;->setZIndex(F)V

    .line 580
    :cond_5
    const-string v0, "center"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 582
    invoke-static {v0}, Lio/flutter/plugins/googlemaps/Convert;->toLatLng(Ljava/lang/Object;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/flutter/plugins/googlemaps/CircleOptionsSink;->setCenter(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 584
    :cond_6
    const-string v0, "radius"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 586
    invoke-static {v0}, Lio/flutter/plugins/googlemaps/Convert;->toDouble(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lio/flutter/plugins/googlemaps/CircleOptionsSink;->setRadius(D)V

    .line 588
    :cond_7
    const-string p1, "circleId"

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_8

    return-object p0

    .line 590
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "circleId was null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static interpretGoogleMapOptions(Ljava/lang/Object;Lio/flutter/plugins/googlemaps/GoogleMapOptionsSink;)V
    .locals 5

    .line 298
    invoke-static {p0}, Lio/flutter/plugins/googlemaps/Convert;->toMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    .line 299
    const-string v0, "cameraTargetBounds"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 301
    invoke-static {v0}, Lio/flutter/plugins/googlemaps/Convert;->toList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 302
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lio/flutter/plugins/googlemaps/Convert;->toLatLngBounds(Ljava/lang/Object;)Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/flutter/plugins/googlemaps/GoogleMapOptionsSink;->setCameraTargetBounds(Lcom/google/android/gms/maps/model/LatLngBounds;)V

    .line 304
    :cond_0
    const-string v0, "compassEnabled"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 306
    invoke-static {v0}, Lio/flutter/plugins/googlemaps/Convert;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {p1, v0}, Lio/flutter/plugins/googlemaps/GoogleMapOptionsSink;->setCompassEnabled(Z)V

    .line 308
    :cond_1
    const-string v0, "mapToolbarEnabled"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 310
    invoke-static {v0}, Lio/flutter/plugins/googlemaps/Convert;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {p1, v0}, Lio/flutter/plugins/googlemaps/GoogleMapOptionsSink;->setMapToolbarEnabled(Z)V

    .line 312
    :cond_2
    const-string v0, "mapType"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 314
    invoke-static {v0}, Lio/flutter/plugins/googlemaps/Convert;->toInt(Ljava/lang/Object;)I

    move-result v0

    invoke-interface {p1, v0}, Lio/flutter/plugins/googlemaps/GoogleMapOptionsSink;->setMapType(I)V

    .line 316
    :cond_3
    const-string v0, "minMaxZoomPreference"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 318
    invoke-static {v0}, Lio/flutter/plugins/googlemaps/Convert;->toList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 320
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lio/flutter/plugins/googlemaps/Convert;->toFloatWrapper(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v3

    .line 321
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lio/flutter/plugins/googlemaps/Convert;->toFloatWrapper(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v0

    .line 319
    invoke-interface {p1, v3, v0}, Lio/flutter/plugins/googlemaps/GoogleMapOptionsSink;->setMinMaxZoomPreference(Ljava/lang/Float;Ljava/lang/Float;)V

    .line 323
    :cond_4
    const-string v0, "padding"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 325
    invoke-static {v0}, Lio/flutter/plugins/googlemaps/Convert;->toList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 327
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lio/flutter/plugins/googlemaps/Convert;->toFloat(Ljava/lang/Object;)F

    move-result v1

    .line 328
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lio/flutter/plugins/googlemaps/Convert;->toFloat(Ljava/lang/Object;)F

    move-result v2

    const/4 v3, 0x2

    .line 329
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lio/flutter/plugins/googlemaps/Convert;->toFloat(Ljava/lang/Object;)F

    move-result v3

    const/4 v4, 0x3

    .line 330
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lio/flutter/plugins/googlemaps/Convert;->toFloat(Ljava/lang/Object;)F

    move-result v0

    .line 326
    invoke-interface {p1, v1, v2, v3, v0}, Lio/flutter/plugins/googlemaps/GoogleMapOptionsSink;->setPadding(FFFF)V

    .line 332
    :cond_5
    const-string v0, "rotateGesturesEnabled"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 334
    invoke-static {v0}, Lio/flutter/plugins/googlemaps/Convert;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {p1, v0}, Lio/flutter/plugins/googlemaps/GoogleMapOptionsSink;->setRotateGesturesEnabled(Z)V

    .line 336
    :cond_6
    const-string v0, "scrollGesturesEnabled"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 338
    invoke-static {v0}, Lio/flutter/plugins/googlemaps/Convert;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {p1, v0}, Lio/flutter/plugins/googlemaps/GoogleMapOptionsSink;->setScrollGesturesEnabled(Z)V

    .line 340
    :cond_7
    const-string v0, "tiltGesturesEnabled"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 342
    invoke-static {v0}, Lio/flutter/plugins/googlemaps/Convert;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {p1, v0}, Lio/flutter/plugins/googlemaps/GoogleMapOptionsSink;->setTiltGesturesEnabled(Z)V

    .line 344
    :cond_8
    const-string v0, "trackCameraPosition"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 346
    invoke-static {v0}, Lio/flutter/plugins/googlemaps/Convert;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {p1, v0}, Lio/flutter/plugins/googlemaps/GoogleMapOptionsSink;->setTrackCameraPosition(Z)V

    .line 348
    :cond_9
    const-string v0, "zoomGesturesEnabled"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 350
    invoke-static {v0}, Lio/flutter/plugins/googlemaps/Convert;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {p1, v0}, Lio/flutter/plugins/googlemaps/GoogleMapOptionsSink;->setZoomGesturesEnabled(Z)V

    .line 352
    :cond_a
    const-string v0, "liteModeEnabled"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 354
    invoke-static {v0}, Lio/flutter/plugins/googlemaps/Convert;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {p1, v0}, Lio/flutter/plugins/googlemaps/GoogleMapOptionsSink;->setLiteModeEnabled(Z)V

    .line 356
    :cond_b
    const-string v0, "myLocationEnabled"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 358
    invoke-static {v0}, Lio/flutter/plugins/googlemaps/Convert;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {p1, v0}, Lio/flutter/plugins/googlemaps/GoogleMapOptionsSink;->setMyLocationEnabled(Z)V

    .line 360
    :cond_c
    const-string v0, "zoomControlsEnabled"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 362
    invoke-static {v0}, Lio/flutter/plugins/googlemaps/Convert;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {p1, v0}, Lio/flutter/plugins/googlemaps/GoogleMapOptionsSink;->setZoomControlsEnabled(Z)V

    .line 364
    :cond_d
    const-string v0, "myLocationButtonEnabled"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 366
    invoke-static {v0}, Lio/flutter/plugins/googlemaps/Convert;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {p1, v0}, Lio/flutter/plugins/googlemaps/GoogleMapOptionsSink;->setMyLocationButtonEnabled(Z)V

    .line 368
    :cond_e
    const-string v0, "indoorEnabled"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 370
    invoke-static {v0}, Lio/flutter/plugins/googlemaps/Convert;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {p1, v0}, Lio/flutter/plugins/googlemaps/GoogleMapOptionsSink;->setIndoorEnabled(Z)V

    .line 372
    :cond_f
    const-string v0, "trafficEnabled"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 374
    invoke-static {v0}, Lio/flutter/plugins/googlemaps/Convert;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {p1, v0}, Lio/flutter/plugins/googlemaps/GoogleMapOptionsSink;->setTrafficEnabled(Z)V

    .line 376
    :cond_10
    const-string v0, "buildingsEnabled"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 378
    invoke-static {p0}, Lio/flutter/plugins/googlemaps/Convert;->toBoolean(Ljava/lang/Object;)Z

    move-result p0

    invoke-interface {p1, p0}, Lio/flutter/plugins/googlemaps/GoogleMapOptionsSink;->setBuildingsEnabled(Z)V

    :cond_11
    return-void
.end method

.method private static interpretInfoWindowOptions(Lio/flutter/plugins/googlemaps/MarkerOptionsSink;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/flutter/plugins/googlemaps/MarkerOptionsSink;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 441
    const-string v0, "title"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 442
    const-string v1, "snippet"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 445
    invoke-interface {p0, v0, v1}, Lio/flutter/plugins/googlemaps/MarkerOptionsSink;->setInfoWindowText(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    :cond_0
    const-string v0, "anchor"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 449
    invoke-static {p1}, Lio/flutter/plugins/googlemaps/Convert;->toList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    .line 450
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lio/flutter/plugins/googlemaps/Convert;->toFloat(Ljava/lang/Object;)F

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lio/flutter/plugins/googlemaps/Convert;->toFloat(Ljava/lang/Object;)F

    move-result p1

    invoke-interface {p0, v0, p1}, Lio/flutter/plugins/googlemaps/MarkerOptionsSink;->setInfoWindowAnchor(FF)V

    :cond_1
    return-void
.end method

.method static interpretMarkerOptions(Ljava/lang/Object;Lio/flutter/plugins/googlemaps/MarkerOptionsSink;)Ljava/lang/String;
    .locals 3

    .line 384
    invoke-static {p0}, Lio/flutter/plugins/googlemaps/Convert;->toMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    .line 385
    const-string v0, "alpha"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 387
    invoke-static {v0}, Lio/flutter/plugins/googlemaps/Convert;->toFloat(Ljava/lang/Object;)F

    move-result v0

    invoke-interface {p1, v0}, Lio/flutter/plugins/googlemaps/MarkerOptionsSink;->setAlpha(F)V

    .line 389
    :cond_0
    const-string v0, "anchor"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 391
    invoke-static {v0}, Lio/flutter/plugins/googlemaps/Convert;->toList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 392
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lio/flutter/plugins/googlemaps/Convert;->toFloat(Ljava/lang/Object;)F

    move-result v1

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lio/flutter/plugins/googlemaps/Convert;->toFloat(Ljava/lang/Object;)F

    move-result v0

    invoke-interface {p1, v1, v0}, Lio/flutter/plugins/googlemaps/MarkerOptionsSink;->setAnchor(FF)V

    .line 394
    :cond_1
    const-string v0, "consumeTapEvents"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 396
    invoke-static {v0}, Lio/flutter/plugins/googlemaps/Convert;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {p1, v0}, Lio/flutter/plugins/googlemaps/MarkerOptionsSink;->setConsumeTapEvents(Z)V

    .line 398
    :cond_2
    const-string v0, "draggable"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 400
    invoke-static {v0}, Lio/flutter/plugins/googlemaps/Convert;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {p1, v0}, Lio/flutter/plugins/googlemaps/MarkerOptionsSink;->setDraggable(Z)V

    .line 402
    :cond_3
    const-string v0, "flat"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 404
    invoke-static {v0}, Lio/flutter/plugins/googlemaps/Convert;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {p1, v0}, Lio/flutter/plugins/googlemaps/MarkerOptionsSink;->setFlat(Z)V

    .line 406
    :cond_4
    const-string v0, "icon"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 408
    invoke-static {v0}, Lio/flutter/plugins/googlemaps/Convert;->toBitmapDescriptor(Ljava/lang/Object;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/flutter/plugins/googlemaps/MarkerOptionsSink;->setIcon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)V

    .line 411
    :cond_5
    const-string v0, "infoWindow"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 413
    invoke-static {v0}, Lio/flutter/plugins/googlemaps/Convert;->toObjectMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1, v0}, Lio/flutter/plugins/googlemaps/Convert;->interpretInfoWindowOptions(Lio/flutter/plugins/googlemaps/MarkerOptionsSink;Ljava/util/Map;)V

    .line 415
    :cond_6
    const-string v0, "position"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 417
    invoke-static {v0}, Lio/flutter/plugins/googlemaps/Convert;->toLatLng(Ljava/lang/Object;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/flutter/plugins/googlemaps/MarkerOptionsSink;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 419
    :cond_7
    const-string v0, "rotation"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 421
    invoke-static {v0}, Lio/flutter/plugins/googlemaps/Convert;->toFloat(Ljava/lang/Object;)F

    move-result v0

    invoke-interface {p1, v0}, Lio/flutter/plugins/googlemaps/MarkerOptionsSink;->setRotation(F)V

    .line 423
    :cond_8
    const-string v0, "visible"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 425
    invoke-static {v0}, Lio/flutter/plugins/googlemaps/Convert;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {p1, v0}, Lio/flutter/plugins/googlemaps/MarkerOptionsSink;->setVisible(Z)V

    .line 427
    :cond_9
    const-string v0, "zIndex"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 429
    invoke-static {v0}, Lio/flutter/plugins/googlemaps/Convert;->toFloat(Ljava/lang/Object;)F

    move-result v0

    invoke-interface {p1, v0}, Lio/flutter/plugins/googlemaps/MarkerOptionsSink;->setZIndex(F)V

    .line 431
    :cond_a
    const-string p1, "markerId"

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_b

    return-object p0

    .line 433
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "markerId was null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static interpretPolygonOptions(Ljava/lang/Object;Lio/flutter/plugins/googlemaps/PolygonOptionsSink;)Ljava/lang/String;
    .locals 1

    .line 455
    invoke-static {p0}, Lio/flutter/plugins/googlemaps/Convert;->toMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    .line 456
    const-string v0, "consumeTapEvents"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 458
    invoke-static {v0}, Lio/flutter/plugins/googlemaps/Convert;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {p1, v0}, Lio/flutter/plugins/googlemaps/PolygonOptionsSink;->setConsumeTapEvents(Z)V

    .line 460
    :cond_0
    const-string v0, "geodesic"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 462
    invoke-static {v0}, Lio/flutter/plugins/googlemaps/Convert;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {p1, v0}, Lio/flutter/plugins/googlemaps/PolygonOptionsSink;->setGeodesic(Z)V

    .line 464
    :cond_1
    const-string v0, "visible"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 466
    invoke-static {v0}, Lio/flutter/plugins/googlemaps/Convert;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {p1, v0}, Lio/flutter/plugins/googlemaps/PolygonOptionsSink;->setVisible(Z)V

    .line 468
    :cond_2
    const-string v0, "fillColor"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 470
    invoke-static {v0}, Lio/flutter/plugins/googlemaps/Convert;->toInt(Ljava/lang/Object;)I

    move-result v0

    invoke-interface {p1, v0}, Lio/flutter/plugins/googlemaps/PolygonOptionsSink;->setFillColor(I)V

    .line 472
    :cond_3
    const-string v0, "strokeColor"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 474
    invoke-static {v0}, Lio/flutter/plugins/googlemaps/Convert;->toInt(Ljava/lang/Object;)I

    move-result v0

    invoke-interface {p1, v0}, Lio/flutter/plugins/googlemaps/PolygonOptionsSink;->setStrokeColor(I)V

    .line 476
    :cond_4
    const-string v0, "strokeWidth"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 478
    invoke-static {v0}, Lio/flutter/plugins/googlemaps/Convert;->toInt(Ljava/lang/Object;)I

    move-result v0

    int-to-float v0, v0

    invoke-interface {p1, v0}, Lio/flutter/plugins/googlemaps/PolygonOptionsSink;->setStrokeWidth(F)V

    .line 480
    :cond_5
    const-string v0, "zIndex"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 482
    invoke-static {v0}, Lio/flutter/plugins/googlemaps/Convert;->toFloat(Ljava/lang/Object;)F

    move-result v0

    invoke-interface {p1, v0}, Lio/flutter/plugins/googlemaps/PolygonOptionsSink;->setZIndex(F)V

    .line 484
    :cond_6
    const-string v0, "points"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 486
    invoke-static {v0}, Lio/flutter/plugins/googlemaps/Convert;->toPoints(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/flutter/plugins/googlemaps/PolygonOptionsSink;->setPoints(Ljava/util/List;)V

    .line 488
    :cond_7
    const-string v0, "holes"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 490
    invoke-static {v0}, Lio/flutter/plugins/googlemaps/Convert;->toHoles(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/flutter/plugins/googlemaps/PolygonOptionsSink;->setHoles(Ljava/util/List;)V

    .line 492
    :cond_8
    const-string p1, "polygonId"

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_9

    return-object p0

    .line 494
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "polygonId was null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static interpretPolylineOptions(Ljava/lang/Object;Lio/flutter/plugins/googlemaps/PolylineOptionsSink;)Ljava/lang/String;
    .locals 1

    .line 501
    invoke-static {p0}, Lio/flutter/plugins/googlemaps/Convert;->toMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    .line 502
    const-string v0, "consumeTapEvents"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 504
    invoke-static {v0}, Lio/flutter/plugins/googlemaps/Convert;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {p1, v0}, Lio/flutter/plugins/googlemaps/PolylineOptionsSink;->setConsumeTapEvents(Z)V

    .line 506
    :cond_0
    const-string v0, "color"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 508
    invoke-static {v0}, Lio/flutter/plugins/googlemaps/Convert;->toInt(Ljava/lang/Object;)I

    move-result v0

    invoke-interface {p1, v0}, Lio/flutter/plugins/googlemaps/PolylineOptionsSink;->setColor(I)V

    .line 510
    :cond_1
    const-string v0, "endCap"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 512
    invoke-static {v0}, Lio/flutter/plugins/googlemaps/Convert;->toCap(Ljava/lang/Object;)Lcom/google/android/gms/maps/model/Cap;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/flutter/plugins/googlemaps/PolylineOptionsSink;->setEndCap(Lcom/google/android/gms/maps/model/Cap;)V

    .line 514
    :cond_2
    const-string v0, "geodesic"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 516
    invoke-static {v0}, Lio/flutter/plugins/googlemaps/Convert;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {p1, v0}, Lio/flutter/plugins/googlemaps/PolylineOptionsSink;->setGeodesic(Z)V

    .line 518
    :cond_3
    const-string v0, "jointType"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 520
    invoke-static {v0}, Lio/flutter/plugins/googlemaps/Convert;->toInt(Ljava/lang/Object;)I

    move-result v0

    invoke-interface {p1, v0}, Lio/flutter/plugins/googlemaps/PolylineOptionsSink;->setJointType(I)V

    .line 522
    :cond_4
    const-string v0, "startCap"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 524
    invoke-static {v0}, Lio/flutter/plugins/googlemaps/Convert;->toCap(Ljava/lang/Object;)Lcom/google/android/gms/maps/model/Cap;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/flutter/plugins/googlemaps/PolylineOptionsSink;->setStartCap(Lcom/google/android/gms/maps/model/Cap;)V

    .line 526
    :cond_5
    const-string v0, "visible"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 528
    invoke-static {v0}, Lio/flutter/plugins/googlemaps/Convert;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {p1, v0}, Lio/flutter/plugins/googlemaps/PolylineOptionsSink;->setVisible(Z)V

    .line 530
    :cond_6
    const-string v0, "width"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 532
    invoke-static {v0}, Lio/flutter/plugins/googlemaps/Convert;->toInt(Ljava/lang/Object;)I

    move-result v0

    int-to-float v0, v0

    invoke-interface {p1, v0}, Lio/flutter/plugins/googlemaps/PolylineOptionsSink;->setWidth(F)V

    .line 534
    :cond_7
    const-string v0, "zIndex"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 536
    invoke-static {v0}, Lio/flutter/plugins/googlemaps/Convert;->toFloat(Ljava/lang/Object;)F

    move-result v0

    invoke-interface {p1, v0}, Lio/flutter/plugins/googlemaps/PolylineOptionsSink;->setZIndex(F)V

    .line 538
    :cond_8
    const-string v0, "points"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 540
    invoke-static {v0}, Lio/flutter/plugins/googlemaps/Convert;->toPoints(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/flutter/plugins/googlemaps/PolylineOptionsSink;->setPoints(Ljava/util/List;)V

    .line 542
    :cond_9
    const-string v0, "pattern"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 544
    invoke-static {v0}, Lio/flutter/plugins/googlemaps/Convert;->toPattern(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/flutter/plugins/googlemaps/PolylineOptionsSink;->setPattern(Ljava/util/List;)V

    .line 546
    :cond_a
    const-string p1, "polylineId"

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_b

    return-object p0

    .line 548
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "polylineId was null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static interpretTile(Ljava/util/Map;)Lcom/google/android/gms/maps/model/Tile;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Lcom/google/android/gms/maps/model/Tile;"
        }
    .end annotation

    .line 693
    const-string v0, "width"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lio/flutter/plugins/googlemaps/Convert;->toInt(Ljava/lang/Object;)I

    move-result v0

    .line 694
    const-string v1, "height"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lio/flutter/plugins/googlemaps/Convert;->toInt(Ljava/lang/Object;)I

    move-result v1

    .line 696
    const-string v2, "data"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 697
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 699
    :goto_0
    new-instance v2, Lcom/google/android/gms/maps/model/Tile;

    invoke-direct {v2, v0, v1, p0}, Lcom/google/android/gms/maps/model/Tile;-><init>(II[B)V

    return-object v2
.end method

.method static interpretTileOverlayOptions(Ljava/util/Map;Lio/flutter/plugins/googlemaps/TileOverlaySink;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;",
            "Lio/flutter/plugins/googlemaps/TileOverlaySink;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 668
    const-string v0, "fadeIn"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 670
    invoke-static {v0}, Lio/flutter/plugins/googlemaps/Convert;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {p1, v0}, Lio/flutter/plugins/googlemaps/TileOverlaySink;->setFadeIn(Z)V

    .line 672
    :cond_0
    const-string v0, "transparency"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 674
    invoke-static {v0}, Lio/flutter/plugins/googlemaps/Convert;->toFloat(Ljava/lang/Object;)F

    move-result v0

    invoke-interface {p1, v0}, Lio/flutter/plugins/googlemaps/TileOverlaySink;->setTransparency(F)V

    .line 676
    :cond_1
    const-string v0, "zIndex"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 678
    invoke-static {v0}, Lio/flutter/plugins/googlemaps/Convert;->toFloat(Ljava/lang/Object;)F

    move-result v0

    invoke-interface {p1, v0}, Lio/flutter/plugins/googlemaps/TileOverlaySink;->setZIndex(F)V

    .line 680
    :cond_2
    const-string v0, "visible"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 682
    invoke-static {v0}, Lio/flutter/plugins/googlemaps/Convert;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {p1, v0}, Lio/flutter/plugins/googlemaps/TileOverlaySink;->setVisible(Z)V

    .line 684
    :cond_3
    const-string p1, "tileOverlayId"

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_4

    return-object p0

    .line 686
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "tileOverlayId was null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static latLngToJson(Lcom/google/android/gms/maps/model/LatLng;)Ljava/lang/Object;
    .locals 3

    .line 221
    iget-wide v0, p0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Double;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static latlngBoundsToJson(Lcom/google/android/gms/maps/model/LatLngBounds;)Ljava/lang/Object;
    .locals 3

    .line 164
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 165
    iget-object v1, p0, Lcom/google/android/gms/maps/model/LatLngBounds;->southwest:Lcom/google/android/gms/maps/model/LatLng;

    invoke-static {v1}, Lio/flutter/plugins/googlemaps/Convert;->latLngToJson(Lcom/google/android/gms/maps/model/LatLng;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "southwest"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    iget-object p0, p0, Lcom/google/android/gms/maps/model/LatLngBounds;->northeast:Lcom/google/android/gms/maps/model/LatLng;

    invoke-static {p0}, Lio/flutter/plugins/googlemaps/Convert;->latLngToJson(Lcom/google/android/gms/maps/model/LatLng;)Ljava/lang/Object;

    move-result-object p0

    const-string v1, "northeast"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method static markerIdToJson(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 174
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 175
    const-string v1, "markerId"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method static pointToJson(Landroid/graphics/Point;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Point;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 236
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 237
    iget v1, p0, Landroid/graphics/Point;->x:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "x"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    iget p0, p0, Landroid/graphics/Point;->y:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "y"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method static polygonIdToJson(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 183
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 184
    const-string v1, "polygonId"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method static polylineIdToJson(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 192
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 193
    const-string v1, "polylineId"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method static tileOverlayArgumentsToJson(Ljava/lang/String;III)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 212
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 213
    const-string v1, "tileOverlayId"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    const-string p0, "x"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    const-string p0, "y"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    const-string p0, "zoom"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static toBitmap(Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 2

    .line 279
    check-cast p0, [B

    const/4 v0, 0x0

    .line 280
    array-length v1, p0

    invoke-static {p0, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    .line 282
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unable to decode bytes as a valid bitmap."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static toBitmapDescriptor(Ljava/lang/Object;)Lcom/google/android/gms/maps/model/BitmapDescriptor;
    .locals 8

    .line 41
    invoke-static {p0}, Lio/flutter/plugins/googlemaps/Convert;->toList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 42
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lio/flutter/plugins/googlemaps/Convert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, -0x1

    sparse-switch v3, :sswitch_data_0

    :goto_0
    move v1, v7

    goto :goto_1

    :sswitch_0
    const-string v1, "defaultMarker"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v4

    goto :goto_1

    :sswitch_1
    const-string v1, "fromBytes"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v5

    goto :goto_1

    :sswitch_2
    const-string v1, "fromAsset"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v6

    goto :goto_1

    :sswitch_3
    const-string v3, "fromAssetImage"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot interpret "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " as BitmapDescriptor"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :pswitch_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-ne p0, v6, :cond_4

    .line 45
    invoke-static {}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->defaultMarker()Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object p0

    return-object p0

    .line 47
    :cond_4
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lio/flutter/plugins/googlemaps/Convert;->toFloat(Ljava/lang/Object;)F

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->defaultMarker(F)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object p0

    return-object p0

    .line 67
    :pswitch_1
    invoke-static {v0}, Lio/flutter/plugins/googlemaps/Convert;->getBitmapFromBytes(Ljava/util/List;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object p0

    return-object p0

    .line 50
    :pswitch_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-ne p0, v5, :cond_5

    .line 52
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lio/flutter/plugins/googlemaps/Convert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/flutter/view/FlutterMain;->getLookupKeyForAsset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 51
    invoke-static {p0}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromAsset(Ljava/lang/String;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object p0

    return-object p0

    .line 56
    :cond_5
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lio/flutter/plugins/googlemaps/Convert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lio/flutter/plugins/googlemaps/Convert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-static {p0, v0}, Lio/flutter/view/FlutterMain;->getLookupKeyForAsset(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 54
    invoke-static {p0}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromAsset(Ljava/lang/String;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object p0

    return-object p0

    .line 59
    :pswitch_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-ne p0, v4, :cond_6

    .line 61
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lio/flutter/plugins/googlemaps/Convert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/flutter/view/FlutterMain;->getLookupKeyForAsset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 60
    invoke-static {p0}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromAsset(Ljava/lang/String;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object p0

    return-object p0

    .line 63
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\'fromAssetImage\' Expected exactly 3 arguments, got: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1b57f46b -> :sswitch_3
        0x3281d66 -> :sswitch_2
        0x338f2e1 -> :sswitch_1
        0x2ec1e1db -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static toBoolean(Ljava/lang/Object;)Z
    .locals 0

    .line 89
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method static toCameraPosition(Ljava/lang/Object;)Lcom/google/android/gms/maps/model/CameraPosition;
    .locals 2

    .line 93
    invoke-static {p0}, Lio/flutter/plugins/googlemaps/Convert;->toMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    .line 94
    invoke-static {}, Lcom/google/android/gms/maps/model/CameraPosition;->builder()Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v0

    .line 95
    const-string v1, "bearing"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lio/flutter/plugins/googlemaps/Convert;->toFloat(Ljava/lang/Object;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->bearing(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    .line 96
    const-string v1, "target"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lio/flutter/plugins/googlemaps/Convert;->toLatLng(Ljava/lang/Object;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->target(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    .line 97
    const-string v1, "tilt"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lio/flutter/plugins/googlemaps/Convert;->toFloat(Ljava/lang/Object;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->tilt(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    .line 98
    const-string v1, "zoom"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lio/flutter/plugins/googlemaps/Convert;->toFloat(Ljava/lang/Object;)F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->zoom(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    .line 99
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->build()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object p0

    return-object p0
.end method

.method static toCameraUpdate(Ljava/lang/Object;F)Lcom/google/android/gms/maps/CameraUpdate;
    .locals 7

    .line 103
    invoke-static {p0}, Lio/flutter/plugins/googlemaps/Convert;->toList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 104
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lio/flutter/plugins/googlemaps/Convert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, -0x1

    sparse-switch v3, :sswitch_data_0

    :goto_0
    move v1, v6

    goto/16 :goto_1

    :sswitch_0
    const-string v1, "newLatLngBounds"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    goto/16 :goto_1

    :sswitch_1
    const-string v1, "newCameraPosition"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x7

    goto :goto_1

    :sswitch_2
    const-string v1, "zoomOut"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x6

    goto :goto_1

    :sswitch_3
    const-string v1, "newLatLngZoom"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x5

    goto :goto_1

    :sswitch_4
    const-string v1, "scrollBy"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x4

    goto :goto_1

    :sswitch_5
    const-string v1, "zoomTo"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x3

    goto :goto_1

    :sswitch_6
    const-string v1, "zoomIn"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    move v1, v4

    goto :goto_1

    :sswitch_7
    const-string v1, "zoomBy"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_0

    :cond_7
    move v1, v5

    goto :goto_1

    :sswitch_8
    const-string v3, "newLatLng"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_0

    :cond_8
    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 131
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot interpret "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " as CameraUpdate"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 111
    :pswitch_0
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lio/flutter/plugins/googlemaps/Convert;->toLatLngBounds(Ljava/lang/Object;)Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object p0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lio/flutter/plugins/googlemaps/Convert;->toPixels(Ljava/lang/Object;F)I

    move-result p1

    .line 110
    invoke-static {p0, p1}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngBounds(Lcom/google/android/gms/maps/model/LatLngBounds;I)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object p0

    return-object p0

    .line 106
    :pswitch_1
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lio/flutter/plugins/googlemaps/Convert;->toCameraPosition(Ljava/lang/Object;)Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newCameraPosition(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object p0

    return-object p0

    .line 127
    :pswitch_2
    invoke-static {}, Lcom/google/android/gms/maps/CameraUpdateFactory;->zoomOut()Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object p0

    return-object p0

    .line 113
    :pswitch_3
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lio/flutter/plugins/googlemaps/Convert;->toLatLng(Ljava/lang/Object;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lio/flutter/plugins/googlemaps/Convert;->toFloat(Ljava/lang/Object;)F

    move-result p1

    invoke-static {p0, p1}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object p0

    return-object p0

    .line 116
    :pswitch_4
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, p1}, Lio/flutter/plugins/googlemaps/Convert;->toFractionalPixels(Ljava/lang/Object;F)F

    move-result p0

    .line 117
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lio/flutter/plugins/googlemaps/Convert;->toFractionalPixels(Ljava/lang/Object;F)F

    move-result p1

    .line 115
    invoke-static {p0, p1}, Lcom/google/android/gms/maps/CameraUpdateFactory;->scrollBy(FF)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object p0

    return-object p0

    .line 129
    :pswitch_5
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lio/flutter/plugins/googlemaps/Convert;->toFloat(Ljava/lang/Object;)F

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/maps/CameraUpdateFactory;->zoomTo(F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object p0

    return-object p0

    .line 125
    :pswitch_6
    invoke-static {}, Lcom/google/android/gms/maps/CameraUpdateFactory;->zoomIn()Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object p0

    return-object p0

    .line 119
    :pswitch_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-ne p0, v4, :cond_9

    .line 120
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lio/flutter/plugins/googlemaps/Convert;->toFloat(Ljava/lang/Object;)F

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/maps/CameraUpdateFactory;->zoomBy(F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object p0

    return-object p0

    .line 122
    :cond_9
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lio/flutter/plugins/googlemaps/Convert;->toFloat(Ljava/lang/Object;)F

    move-result p0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lio/flutter/plugins/googlemaps/Convert;->toPoint(Ljava/lang/Object;F)Landroid/graphics/Point;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/android/gms/maps/CameraUpdateFactory;->zoomBy(FLandroid/graphics/Point;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object p0

    return-object p0

    .line 108
    :pswitch_8
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lio/flutter/plugins/googlemaps/Convert;->toLatLng(Ljava/lang/Object;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLng(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object p0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x307ef13a -> :sswitch_8
        -0x29807c76 -> :sswitch_7
        -0x29807ba8 -> :sswitch_6
        -0x29807a52 -> :sswitch_5
        -0x17f88ffc -> :sswitch_4
        -0x8a52c47 -> :sswitch_3
        -0x68ee185 -> :sswitch_2
        0x1526e92e -> :sswitch_1
        0x6303451b -> :sswitch_0
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

.method private static toCap(Ljava/lang/Object;)Lcom/google/android/gms/maps/model/Cap;
    .locals 7

    .line 648
    invoke-static {p0}, Lio/flutter/plugins/googlemaps/Convert;->toList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 649
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lio/flutter/plugins/googlemaps/Convert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, -0x1

    sparse-switch v3, :sswitch_data_0

    :goto_0
    move v1, v6

    goto :goto_1

    :sswitch_0
    const-string v1, "customCap"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    goto :goto_1

    :sswitch_1
    const-string v1, "squareCap"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v4

    goto :goto_1

    :sswitch_2
    const-string v1, "buttCap"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v5

    goto :goto_1

    :sswitch_3
    const-string v3, "roundCap"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 663
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot interpret "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " as Cap"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 657
    :pswitch_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-ne p0, v4, :cond_4

    .line 658
    new-instance p0, Lcom/google/android/gms/maps/model/CustomCap;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lio/flutter/plugins/googlemaps/Convert;->toBitmapDescriptor(Ljava/lang/Object;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/maps/model/CustomCap;-><init>(Lcom/google/android/gms/maps/model/BitmapDescriptor;)V

    return-object p0

    .line 660
    :cond_4
    new-instance p0, Lcom/google/android/gms/maps/model/CustomCap;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lio/flutter/plugins/googlemaps/Convert;->toBitmapDescriptor(Ljava/lang/Object;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lio/flutter/plugins/googlemaps/Convert;->toFloat(Ljava/lang/Object;)F

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/maps/model/CustomCap;-><init>(Lcom/google/android/gms/maps/model/BitmapDescriptor;F)V

    return-object p0

    .line 655
    :pswitch_1
    new-instance p0, Lcom/google/android/gms/maps/model/SquareCap;

    invoke-direct {p0}, Lcom/google/android/gms/maps/model/SquareCap;-><init>()V

    return-object p0

    .line 651
    :pswitch_2
    new-instance p0, Lcom/google/android/gms/maps/model/ButtCap;

    invoke-direct {p0}, Lcom/google/android/gms/maps/model/ButtCap;-><init>()V

    return-object p0

    .line 653
    :pswitch_3
    new-instance p0, Lcom/google/android/gms/maps/model/RoundCap;

    invoke-direct {p0}, Lcom/google/android/gms/maps/model/RoundCap;-><init>()V

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x2bc9c -> :sswitch_3
        0xe6218bf -> :sswitch_2
        0x4e573d75 -> :sswitch_1
        0x600dfaa1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static toDouble(Ljava/lang/Object;)D
    .locals 2

    .line 136
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method private static toFloat(Ljava/lang/Object;)F
    .locals 0

    .line 140
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method private static toFloatWrapper(Ljava/lang/Object;)Ljava/lang/Float;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 144
    :cond_0
    invoke-static {p0}, Lio/flutter/plugins/googlemaps/Convert;->toFloat(Ljava/lang/Object;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static toFractionalPixels(Ljava/lang/Object;F)F
    .locals 0

    .line 271
    invoke-static {p0}, Lio/flutter/plugins/googlemaps/Convert;->toFloat(Ljava/lang/Object;)F

    move-result p0

    mul-float/2addr p0, p1

    return p0
.end method

.method private static toHoles(Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;>;"
        }
    .end annotation

    .line 609
    invoke-static {p0}, Lio/flutter/plugins/googlemaps/Convert;->toList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 610
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 612
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 613
    invoke-static {v1}, Lio/flutter/plugins/googlemaps/Convert;->toPoints(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static toInt(Ljava/lang/Object;)I
    .locals 0

    .line 148
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method static toLatLng(Ljava/lang/Object;)Lcom/google/android/gms/maps/model/LatLng;
    .locals 5

    .line 225
    invoke-static {p0}, Lio/flutter/plugins/googlemaps/Convert;->toList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 226
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lio/flutter/plugins/googlemaps/Convert;->toDouble(Ljava/lang/Object;)D

    move-result-wide v1

    const/4 v3, 0x1

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lio/flutter/plugins/googlemaps/Convert;->toDouble(Ljava/lang/Object;)D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    return-object v0
.end method

.method private static toLatLngBounds(Ljava/lang/Object;)Lcom/google/android/gms/maps/model/LatLngBounds;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 246
    :cond_0
    invoke-static {p0}, Lio/flutter/plugins/googlemaps/Convert;->toList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 247
    new-instance v0, Lcom/google/android/gms/maps/model/LatLngBounds;

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lio/flutter/plugins/googlemaps/Convert;->toLatLng(Ljava/lang/Object;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lio/flutter/plugins/googlemaps/Convert;->toLatLng(Ljava/lang/Object;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/maps/model/LatLngBounds;-><init>(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)V

    return-object v0
.end method

.method private static toList(Ljava/lang/Object;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 251
    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private static toMap(Ljava/lang/Object;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "**>;"
        }
    .end annotation

    .line 255
    check-cast p0, Ljava/util/Map;

    return-object p0
.end method

.method private static toObjectMap(Ljava/lang/Object;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 259
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 260
    check-cast p0, Ljava/util/Map;

    .line 261
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 262
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 264
    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static toPattern(Ljava/lang/Object;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/PatternItem;",
            ">;"
        }
    .end annotation

    .line 619
    invoke-static {p0}, Lio/flutter/plugins/googlemaps/Convert;->toList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 621
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 625
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 627
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 628
    invoke-static {v1}, Lio/flutter/plugins/googlemaps/Convert;->toList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    .line 629
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lio/flutter/plugins/googlemaps/Convert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, -0x1

    sparse-switch v4, :sswitch_data_0

    :goto_1
    move v2, v6

    goto :goto_2

    :sswitch_0
    const-string v2, "dash"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x2

    goto :goto_2

    :sswitch_1
    const-string v2, "gap"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    move v2, v5

    goto :goto_2

    :sswitch_2
    const-string v4, "dot"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    :goto_2
    packed-switch v2, :pswitch_data_0

    .line 640
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot interpret "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " as PatternItem"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 634
    :pswitch_0
    new-instance v2, Lcom/google/android/gms/maps/model/Dash;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lio/flutter/plugins/googlemaps/Convert;->toFloat(Ljava/lang/Object;)F

    move-result v1

    invoke-direct {v2, v1}, Lcom/google/android/gms/maps/model/Dash;-><init>(F)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 637
    :pswitch_1
    new-instance v2, Lcom/google/android/gms/maps/model/Gap;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lio/flutter/plugins/googlemaps/Convert;->toFloat(Ljava/lang/Object;)F

    move-result v1

    invoke-direct {v2, v1}, Lcom/google/android/gms/maps/model/Gap;-><init>(F)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 631
    :pswitch_2
    new-instance v1, Lcom/google/android/gms/maps/model/Dot;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/Dot;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_4
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x18549 -> :sswitch_2
        0x18ed6 -> :sswitch_1
        0x2eef92 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static toPixels(Ljava/lang/Object;F)I
    .locals 0

    .line 275
    invoke-static {p0, p1}, Lio/flutter/plugins/googlemaps/Convert;->toFractionalPixels(Ljava/lang/Object;F)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method static toPoint(Ljava/lang/Object;)Landroid/graphics/Point;
    .locals 2

    .line 230
    invoke-static {p0}, Lio/flutter/plugins/googlemaps/Convert;->toMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "x"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 231
    invoke-static {p0}, Lio/flutter/plugins/googlemaps/Convert;->toMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    const-string v1, "y"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 232
    new-instance v1, Landroid/graphics/Point;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-direct {v1, v0, p0}, Landroid/graphics/Point;-><init>(II)V

    return-object v1
.end method

.method private static toPoint(Ljava/lang/Object;F)Landroid/graphics/Point;
    .locals 3

    .line 289
    invoke-static {p0}, Lio/flutter/plugins/googlemaps/Convert;->toList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 290
    new-instance v0, Landroid/graphics/Point;

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p1}, Lio/flutter/plugins/googlemaps/Convert;->toPixels(Ljava/lang/Object;F)I

    move-result v1

    const/4 v2, 0x1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, p1}, Lio/flutter/plugins/googlemaps/Convert;->toPixels(Ljava/lang/Object;F)I

    move-result p0

    invoke-direct {v0, v1, p0}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method static toPoints(Ljava/lang/Object;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;"
        }
    .end annotation

    .line 598
    invoke-static {p0}, Lio/flutter/plugins/googlemaps/Convert;->toList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 599
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 601
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 602
    invoke-static {v1}, Lio/flutter/plugins/googlemaps/Convert;->toList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 603
    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lio/flutter/plugins/googlemaps/Convert;->toDouble(Ljava/lang/Object;)D

    move-result-wide v3

    const/4 v5, 0x1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lio/flutter/plugins/googlemaps/Convert;->toDouble(Ljava/lang/Object;)D

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 294
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method
