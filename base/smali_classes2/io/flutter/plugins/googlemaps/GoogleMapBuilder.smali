.class Lio/flutter/plugins/googlemaps/GoogleMapBuilder;
.super Ljava/lang/Object;
.source "GoogleMapBuilder.java"

# interfaces
.implements Lio/flutter/plugins/googlemaps/GoogleMapOptionsSink;


# instance fields
.field private buildingsEnabled:Z

.field private indoorEnabled:Z

.field private initialCircles:Ljava/lang/Object;

.field private initialMarkers:Ljava/lang/Object;

.field private initialPolygons:Ljava/lang/Object;

.field private initialPolylines:Ljava/lang/Object;

.field private initialTileOverlays:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;>;"
        }
    .end annotation
.end field

.field private myLocationButtonEnabled:Z

.field private myLocationEnabled:Z

.field private final options:Lcom/google/android/gms/maps/GoogleMapOptions;

.field private padding:Landroid/graphics/Rect;

.field private trackCameraPosition:Z

.field private trafficEnabled:Z


# direct methods
.method constructor <init>()V
    .locals 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lcom/google/android/gms/maps/GoogleMapOptions;

    invoke-direct {v0}, Lcom/google/android/gms/maps/GoogleMapOptions;-><init>()V

    iput-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapBuilder;->options:Lcom/google/android/gms/maps/GoogleMapOptions;

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapBuilder;->trackCameraPosition:Z

    .line 19
    iput-boolean v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapBuilder;->myLocationEnabled:Z

    .line 20
    iput-boolean v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapBuilder;->myLocationButtonEnabled:Z

    const/4 v1, 0x1

    .line 21
    iput-boolean v1, p0, Lio/flutter/plugins/googlemaps/GoogleMapBuilder;->indoorEnabled:Z

    .line 22
    iput-boolean v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapBuilder;->trafficEnabled:Z

    .line 23
    iput-boolean v1, p0, Lio/flutter/plugins/googlemaps/GoogleMapBuilder;->buildingsEnabled:Z

    .line 29
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lio/flutter/plugins/googlemaps/GoogleMapBuilder;->padding:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method build(ILandroid/content/Context;Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/googlemaps/LifecycleProvider;)Lio/flutter/plugins/googlemaps/GoogleMapController;
    .locals 7

    .line 36
    new-instance v6, Lio/flutter/plugins/googlemaps/GoogleMapController;

    iget-object v5, p0, Lio/flutter/plugins/googlemaps/GoogleMapBuilder;->options:Lcom/google/android/gms/maps/GoogleMapOptions;

    move-object v0, v6

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lio/flutter/plugins/googlemaps/GoogleMapController;-><init>(ILandroid/content/Context;Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/googlemaps/LifecycleProvider;Lcom/google/android/gms/maps/GoogleMapOptions;)V

    .line 38
    invoke-virtual {v6}, Lio/flutter/plugins/googlemaps/GoogleMapController;->init()V

    .line 39
    iget-boolean p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapBuilder;->myLocationEnabled:Z

    invoke-virtual {v6, p1}, Lio/flutter/plugins/googlemaps/GoogleMapController;->setMyLocationEnabled(Z)V

    .line 40
    iget-boolean p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapBuilder;->myLocationButtonEnabled:Z

    invoke-virtual {v6, p1}, Lio/flutter/plugins/googlemaps/GoogleMapController;->setMyLocationButtonEnabled(Z)V

    .line 41
    iget-boolean p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapBuilder;->indoorEnabled:Z

    invoke-virtual {v6, p1}, Lio/flutter/plugins/googlemaps/GoogleMapController;->setIndoorEnabled(Z)V

    .line 42
    iget-boolean p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapBuilder;->trafficEnabled:Z

    invoke-virtual {v6, p1}, Lio/flutter/plugins/googlemaps/GoogleMapController;->setTrafficEnabled(Z)V

    .line 43
    iget-boolean p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapBuilder;->buildingsEnabled:Z

    invoke-virtual {v6, p1}, Lio/flutter/plugins/googlemaps/GoogleMapController;->setBuildingsEnabled(Z)V

    .line 44
    iget-boolean p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapBuilder;->trackCameraPosition:Z

    invoke-virtual {v6, p1}, Lio/flutter/plugins/googlemaps/GoogleMapController;->setTrackCameraPosition(Z)V

    .line 45
    iget-object p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapBuilder;->initialMarkers:Ljava/lang/Object;

    invoke-virtual {v6, p1}, Lio/flutter/plugins/googlemaps/GoogleMapController;->setInitialMarkers(Ljava/lang/Object;)V

    .line 46
    iget-object p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapBuilder;->initialPolygons:Ljava/lang/Object;

    invoke-virtual {v6, p1}, Lio/flutter/plugins/googlemaps/GoogleMapController;->setInitialPolygons(Ljava/lang/Object;)V

    .line 47
    iget-object p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapBuilder;->initialPolylines:Ljava/lang/Object;

    invoke-virtual {v6, p1}, Lio/flutter/plugins/googlemaps/GoogleMapController;->setInitialPolylines(Ljava/lang/Object;)V

    .line 48
    iget-object p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapBuilder;->initialCircles:Ljava/lang/Object;

    invoke-virtual {v6, p1}, Lio/flutter/plugins/googlemaps/GoogleMapController;->setInitialCircles(Ljava/lang/Object;)V

    .line 49
    iget-object p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapBuilder;->padding:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    iget-object p2, p0, Lio/flutter/plugins/googlemaps/GoogleMapBuilder;->padding:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->left:I

    int-to-float p2, p2

    iget-object p3, p0, Lio/flutter/plugins/googlemaps/GoogleMapBuilder;->padding:Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    int-to-float p3, p3

    iget-object p4, p0, Lio/flutter/plugins/googlemaps/GoogleMapBuilder;->padding:Landroid/graphics/Rect;

    iget p4, p4, Landroid/graphics/Rect;->right:I

    int-to-float p4, p4

    invoke-virtual {v6, p1, p2, p3, p4}, Lio/flutter/plugins/googlemaps/GoogleMapController;->setPadding(FFFF)V

    .line 50
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/GoogleMapBuilder;->initialTileOverlays:Ljava/util/List;

    invoke-virtual {v6, p0}, Lio/flutter/plugins/googlemaps/GoogleMapController;->setInitialTileOverlays(Ljava/util/List;)V

    return-object v6
.end method

.method public setBuildingsEnabled(Z)V
    .locals 0

    .line 139
    iput-boolean p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapBuilder;->buildingsEnabled:Z

    return-void
.end method

.method public setCameraTargetBounds(Lcom/google/android/gms/maps/model/LatLngBounds;)V
    .locals 0

    .line 74
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/GoogleMapBuilder;->options:Lcom/google/android/gms/maps/GoogleMapOptions;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/GoogleMapOptions;->latLngBoundsForCameraTarget(Lcom/google/android/gms/maps/model/LatLngBounds;)Lcom/google/android/gms/maps/GoogleMapOptions;

    return-void
.end method

.method public setCompassEnabled(Z)V
    .locals 0

    .line 64
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/GoogleMapBuilder;->options:Lcom/google/android/gms/maps/GoogleMapOptions;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/GoogleMapOptions;->compassEnabled(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    return-void
.end method

.method public setIndoorEnabled(Z)V
    .locals 0

    .line 129
    iput-boolean p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapBuilder;->indoorEnabled:Z

    return-void
.end method

.method setInitialCameraPosition(Lcom/google/android/gms/maps/model/CameraPosition;)V
    .locals 0

    .line 55
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/GoogleMapBuilder;->options:Lcom/google/android/gms/maps/GoogleMapOptions;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/GoogleMapOptions;->camera(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/GoogleMapOptions;

    return-void
.end method

.method public setInitialCircles(Ljava/lang/Object;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapBuilder;->initialCircles:Ljava/lang/Object;

    return-void
.end method

.method public setInitialMarkers(Ljava/lang/Object;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapBuilder;->initialMarkers:Ljava/lang/Object;

    return-void
.end method

.method public setInitialPolygons(Ljava/lang/Object;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapBuilder;->initialPolygons:Ljava/lang/Object;

    return-void
.end method

.method public setInitialPolylines(Ljava/lang/Object;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapBuilder;->initialPolylines:Ljava/lang/Object;

    return-void
.end method

.method public setInitialTileOverlays(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;>;)V"
        }
    .end annotation

    .line 179
    iput-object p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapBuilder;->initialTileOverlays:Ljava/util/List;

    return-void
.end method

.method public setLiteModeEnabled(Z)V
    .locals 0

    .line 124
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/GoogleMapBuilder;->options:Lcom/google/android/gms/maps/GoogleMapOptions;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/GoogleMapOptions;->liteMode(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    return-void
.end method

.method public setMapId(Ljava/lang/String;)V
    .locals 0

    .line 59
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/GoogleMapBuilder;->options:Lcom/google/android/gms/maps/GoogleMapOptions;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/GoogleMapOptions;->mapId(Ljava/lang/String;)Lcom/google/android/gms/maps/GoogleMapOptions;

    return-void
.end method

.method public setMapToolbarEnabled(Z)V
    .locals 0

    .line 69
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/GoogleMapBuilder;->options:Lcom/google/android/gms/maps/GoogleMapOptions;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/GoogleMapOptions;->mapToolbarEnabled(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    return-void
.end method

.method public setMapType(I)V
    .locals 0

    .line 79
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/GoogleMapBuilder;->options:Lcom/google/android/gms/maps/GoogleMapOptions;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/GoogleMapOptions;->mapType(I)Lcom/google/android/gms/maps/GoogleMapOptions;

    return-void
.end method

.method public setMinMaxZoomPreference(Ljava/lang/Float;Ljava/lang/Float;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 85
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapBuilder;->options:Lcom/google/android/gms/maps/GoogleMapOptions;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMapOptions;->minZoomPreference(F)Lcom/google/android/gms/maps/GoogleMapOptions;

    :cond_0
    if-eqz p2, :cond_1

    .line 88
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/GoogleMapBuilder;->options:Lcom/google/android/gms/maps/GoogleMapOptions;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/GoogleMapOptions;->maxZoomPreference(F)Lcom/google/android/gms/maps/GoogleMapOptions;

    :cond_1
    return-void
.end method

.method public setMyLocationButtonEnabled(Z)V
    .locals 0

    .line 154
    iput-boolean p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapBuilder;->myLocationButtonEnabled:Z

    return-void
.end method

.method public setMyLocationEnabled(Z)V
    .locals 0

    .line 144
    iput-boolean p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapBuilder;->myLocationEnabled:Z

    return-void
.end method

.method public setPadding(FFFF)V
    .locals 1

    .line 94
    new-instance v0, Landroid/graphics/Rect;

    float-to-int p2, p2

    float-to-int p1, p1

    float-to-int p4, p4

    float-to-int p3, p3

    invoke-direct {v0, p2, p1, p4, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapBuilder;->padding:Landroid/graphics/Rect;

    return-void
.end method

.method public setRotateGesturesEnabled(Z)V
    .locals 0

    .line 104
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/GoogleMapBuilder;->options:Lcom/google/android/gms/maps/GoogleMapOptions;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/GoogleMapOptions;->rotateGesturesEnabled(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    return-void
.end method

.method public setScrollGesturesEnabled(Z)V
    .locals 0

    .line 109
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/GoogleMapBuilder;->options:Lcom/google/android/gms/maps/GoogleMapOptions;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/GoogleMapOptions;->scrollGesturesEnabled(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    return-void
.end method

.method public setTiltGesturesEnabled(Z)V
    .locals 0

    .line 114
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/GoogleMapBuilder;->options:Lcom/google/android/gms/maps/GoogleMapOptions;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/GoogleMapOptions;->tiltGesturesEnabled(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    return-void
.end method

.method public setTrackCameraPosition(Z)V
    .locals 0

    .line 99
    iput-boolean p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapBuilder;->trackCameraPosition:Z

    return-void
.end method

.method public setTrafficEnabled(Z)V
    .locals 0

    .line 134
    iput-boolean p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapBuilder;->trafficEnabled:Z

    return-void
.end method

.method public setZoomControlsEnabled(Z)V
    .locals 0

    .line 149
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/GoogleMapBuilder;->options:Lcom/google/android/gms/maps/GoogleMapOptions;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/GoogleMapOptions;->zoomControlsEnabled(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    return-void
.end method

.method public setZoomGesturesEnabled(Z)V
    .locals 0

    .line 119
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/GoogleMapBuilder;->options:Lcom/google/android/gms/maps/GoogleMapOptions;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/GoogleMapOptions;->zoomGesturesEnabled(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    return-void
.end method
