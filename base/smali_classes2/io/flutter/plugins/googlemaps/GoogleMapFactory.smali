.class public Lio/flutter/plugins/googlemaps/GoogleMapFactory;
.super Lio/flutter/plugin/platform/PlatformViewFactory;
.source "GoogleMapFactory.java"


# instance fields
.field private final binaryMessenger:Lio/flutter/plugin/common/BinaryMessenger;

.field private final googleMapInitializer:Lio/flutter/plugins/googlemaps/GoogleMapInitializer;

.field private final lifecycleProvider:Lio/flutter/plugins/googlemaps/LifecycleProvider;


# direct methods
.method constructor <init>(Lio/flutter/plugin/common/BinaryMessenger;Landroid/content/Context;Lio/flutter/plugins/googlemaps/LifecycleProvider;)V
    .locals 1

    .line 26
    sget-object v0, Lio/flutter/plugin/common/StandardMessageCodec;->INSTANCE:Lio/flutter/plugin/common/StandardMessageCodec;

    invoke-direct {p0, v0}, Lio/flutter/plugin/platform/PlatformViewFactory;-><init>(Lio/flutter/plugin/common/MessageCodec;)V

    .line 28
    iput-object p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapFactory;->binaryMessenger:Lio/flutter/plugin/common/BinaryMessenger;

    .line 29
    iput-object p3, p0, Lio/flutter/plugins/googlemaps/GoogleMapFactory;->lifecycleProvider:Lio/flutter/plugins/googlemaps/LifecycleProvider;

    .line 30
    new-instance p3, Lio/flutter/plugins/googlemaps/GoogleMapInitializer;

    invoke-direct {p3, p2, p1}, Lio/flutter/plugins/googlemaps/GoogleMapInitializer;-><init>(Landroid/content/Context;Lio/flutter/plugin/common/BinaryMessenger;)V

    iput-object p3, p0, Lio/flutter/plugins/googlemaps/GoogleMapFactory;->googleMapInitializer:Lio/flutter/plugins/googlemaps/GoogleMapInitializer;

    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;ILjava/lang/Object;)Lio/flutter/plugin/platform/PlatformView;
    .locals 4

    .line 37
    check-cast p3, Ljava/util/Map;

    .line 38
    new-instance v0, Lio/flutter/plugins/googlemaps/GoogleMapBuilder;

    invoke-direct {v0}, Lio/flutter/plugins/googlemaps/GoogleMapBuilder;-><init>()V

    .line 40
    const-string v1, "options"

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 41
    invoke-static {v1, v0}, Lio/flutter/plugins/googlemaps/Convert;->interpretGoogleMapOptions(Ljava/lang/Object;Lio/flutter/plugins/googlemaps/GoogleMapOptionsSink;)V

    .line 42
    const-string v2, "initialCameraPosition"

    invoke-interface {p3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 43
    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lio/flutter/plugins/googlemaps/Convert;->toCameraPosition(Ljava/lang/Object;)Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v2

    .line 44
    invoke-virtual {v0, v2}, Lio/flutter/plugins/googlemaps/GoogleMapBuilder;->setInitialCameraPosition(Lcom/google/android/gms/maps/model/CameraPosition;)V

    .line 46
    :cond_0
    const-string v2, "markersToAdd"

    invoke-interface {p3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 47
    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/flutter/plugins/googlemaps/GoogleMapBuilder;->setInitialMarkers(Ljava/lang/Object;)V

    .line 49
    :cond_1
    const-string v2, "polygonsToAdd"

    invoke-interface {p3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 50
    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/flutter/plugins/googlemaps/GoogleMapBuilder;->setInitialPolygons(Ljava/lang/Object;)V

    .line 52
    :cond_2
    const-string v2, "polylinesToAdd"

    invoke-interface {p3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 53
    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/flutter/plugins/googlemaps/GoogleMapBuilder;->setInitialPolylines(Ljava/lang/Object;)V

    .line 55
    :cond_3
    const-string v2, "circlesToAdd"

    invoke-interface {p3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 56
    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/flutter/plugins/googlemaps/GoogleMapBuilder;->setInitialCircles(Ljava/lang/Object;)V

    .line 58
    :cond_4
    const-string v2, "tileOverlaysToAdd"

    invoke-interface {p3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 59
    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    invoke-virtual {v0, p3}, Lio/flutter/plugins/googlemaps/GoogleMapBuilder;->setInitialTileOverlays(Ljava/util/List;)V

    .line 61
    :cond_5
    check-cast v1, Ljava/util/Map;

    const-string p3, "cloudMapId"

    invoke-interface {v1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_6

    .line 63
    check-cast p3, Ljava/lang/String;

    invoke-virtual {v0, p3}, Lio/flutter/plugins/googlemaps/GoogleMapBuilder;->setMapId(Ljava/lang/String;)V

    .line 66
    :cond_6
    iget-object p3, p0, Lio/flutter/plugins/googlemaps/GoogleMapFactory;->binaryMessenger:Lio/flutter/plugin/common/BinaryMessenger;

    iget-object p0, p0, Lio/flutter/plugins/googlemaps/GoogleMapFactory;->lifecycleProvider:Lio/flutter/plugins/googlemaps/LifecycleProvider;

    invoke-virtual {v0, p2, p1, p3, p0}, Lio/flutter/plugins/googlemaps/GoogleMapBuilder;->build(ILandroid/content/Context;Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/googlemaps/LifecycleProvider;)Lio/flutter/plugins/googlemaps/GoogleMapController;

    move-result-object p0

    return-object p0
.end method
