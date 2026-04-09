.class final Lio/flutter/plugins/googlemaps/GoogleMapController;
.super Ljava/lang/Object;
.source "GoogleMapController.java"

# interfaces
.implements Landroidx/lifecycle/DefaultLifecycleObserver;
.implements Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding$OnSaveInstanceStateListener;
.implements Lio/flutter/plugins/googlemaps/GoogleMapOptionsSink;
.implements Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;
.implements Lcom/google/android/gms/maps/OnMapReadyCallback;
.implements Lio/flutter/plugins/googlemaps/GoogleMapListener;
.implements Lio/flutter/plugin/platform/PlatformView;


# static fields
.field private static final TAG:Ljava/lang/String; = "GoogleMapController"


# instance fields
.field private buildingsEnabled:Z

.field private final circlesController:Lio/flutter/plugins/googlemaps/CirclesController;

.field private final context:Landroid/content/Context;

.field final density:F

.field private disposed:Z

.field private googleMap:Lcom/google/android/gms/maps/GoogleMap;

.field private final id:I

.field private indoorEnabled:Z

.field private initialCircles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private initialMarkers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field initialPadding:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private initialPolygons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private initialPolylines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

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

.field private final lifecycleProvider:Lio/flutter/plugins/googlemaps/LifecycleProvider;

.field private loadedCallbackPending:Z

.field private mapReadyResult:Lio/flutter/plugin/common/MethodChannel$Result;

.field private mapView:Lcom/google/android/gms/maps/MapView;

.field private final markersController:Lio/flutter/plugins/googlemaps/MarkersController;

.field private final methodChannel:Lio/flutter/plugin/common/MethodChannel;

.field private myLocationButtonEnabled:Z

.field private myLocationEnabled:Z

.field private final options:Lcom/google/android/gms/maps/GoogleMapOptions;

.field private final polygonsController:Lio/flutter/plugins/googlemaps/PolygonsController;

.field private final polylinesController:Lio/flutter/plugins/googlemaps/PolylinesController;

.field private final tileOverlaysController:Lio/flutter/plugins/googlemaps/TileOverlaysController;

.field private trackCameraPosition:Z

.field private trafficEnabled:Z

.field private zoomControlsEnabled:Z


# direct methods
.method public static synthetic $r8$lambda$HZutRxIq2IeQEO5a4Rt-QamGTCk(Lio/flutter/plugins/googlemaps/GoogleMapController;)V
    .locals 0

    invoke-direct {p0}, Lio/flutter/plugins/googlemaps/GoogleMapController;->lambda$invalidateMapIfNeeded$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$T4dIsiITYA5YInRNUWyzX5NvrfU(Lio/flutter/plugins/googlemaps/GoogleMapController;)V
    .locals 0

    invoke-direct {p0}, Lio/flutter/plugins/googlemaps/GoogleMapController;->lambda$invalidateMapIfNeeded$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$eJAIQ2teBt4ZsxtQW9NFuVexMYk(Lio/flutter/plugins/googlemaps/GoogleMapController;)V
    .locals 0

    invoke-direct {p0}, Lio/flutter/plugins/googlemaps/GoogleMapController;->lambda$invalidateMapIfNeeded$0()V

    return-void
.end method

.method constructor <init>(ILandroid/content/Context;Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/googlemaps/LifecycleProvider;Lcom/google/android/gms/maps/GoogleMapOptions;)V
    .locals 2

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->trackCameraPosition:Z

    .line 66
    iput-boolean v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->myLocationEnabled:Z

    .line 67
    iput-boolean v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->myLocationButtonEnabled:Z

    const/4 v1, 0x1

    .line 68
    iput-boolean v1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->zoomControlsEnabled:Z

    .line 69
    iput-boolean v1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->indoorEnabled:Z

    .line 70
    iput-boolean v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->trafficEnabled:Z

    .line 71
    iput-boolean v1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->buildingsEnabled:Z

    .line 72
    iput-boolean v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->disposed:Z

    .line 138
    iput-boolean v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->loadedCallbackPending:Z

    .line 95
    iput p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->id:I

    .line 96
    iput-object p2, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->context:Landroid/content/Context;

    .line 97
    iput-object p5, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->options:Lcom/google/android/gms/maps/GoogleMapOptions;

    .line 98
    new-instance v0, Lcom/google/android/gms/maps/MapView;

    invoke-direct {v0, p2, p5}, Lcom/google/android/gms/maps/MapView;-><init>(Landroid/content/Context;Lcom/google/android/gms/maps/GoogleMapOptions;)V

    iput-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->mapView:Lcom/google/android/gms/maps/MapView;

    .line 99
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    iput p2, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->density:F

    .line 100
    new-instance p5, Lio/flutter/plugin/common/MethodChannel;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "plugins.flutter.dev/google_maps_android_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p5, p3, p1}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    iput-object p5, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->methodChannel:Lio/flutter/plugin/common/MethodChannel;

    .line 102
    invoke-virtual {p5, p0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 103
    iput-object p4, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->lifecycleProvider:Lio/flutter/plugins/googlemaps/LifecycleProvider;

    .line 104
    new-instance p1, Lio/flutter/plugins/googlemaps/MarkersController;

    invoke-direct {p1, p5}, Lio/flutter/plugins/googlemaps/MarkersController;-><init>(Lio/flutter/plugin/common/MethodChannel;)V

    iput-object p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->markersController:Lio/flutter/plugins/googlemaps/MarkersController;

    .line 105
    new-instance p1, Lio/flutter/plugins/googlemaps/PolygonsController;

    invoke-direct {p1, p5, p2}, Lio/flutter/plugins/googlemaps/PolygonsController;-><init>(Lio/flutter/plugin/common/MethodChannel;F)V

    iput-object p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->polygonsController:Lio/flutter/plugins/googlemaps/PolygonsController;

    .line 106
    new-instance p1, Lio/flutter/plugins/googlemaps/PolylinesController;

    invoke-direct {p1, p5, p2}, Lio/flutter/plugins/googlemaps/PolylinesController;-><init>(Lio/flutter/plugin/common/MethodChannel;F)V

    iput-object p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->polylinesController:Lio/flutter/plugins/googlemaps/PolylinesController;

    .line 107
    new-instance p1, Lio/flutter/plugins/googlemaps/CirclesController;

    invoke-direct {p1, p5, p2}, Lio/flutter/plugins/googlemaps/CirclesController;-><init>(Lio/flutter/plugin/common/MethodChannel;F)V

    iput-object p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->circlesController:Lio/flutter/plugins/googlemaps/CirclesController;

    .line 108
    new-instance p1, Lio/flutter/plugins/googlemaps/TileOverlaysController;

    invoke-direct {p1, p5}, Lio/flutter/plugins/googlemaps/TileOverlaysController;-><init>(Lio/flutter/plugin/common/MethodChannel;)V

    iput-object p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->tileOverlaysController:Lio/flutter/plugins/googlemaps/TileOverlaysController;

    return-void
.end method

.method private animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V
    .locals 0

    .line 131
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    return-void
.end method

.method private checkSelfPermission(Ljava/lang/String;)I
    .locals 2

    if-eqz p1, :cond_0

    .line 889
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->context:Landroid/content/Context;

    .line 890
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    .line 889
    invoke-virtual {p0, p1, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p0

    return p0

    .line 887
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "permission is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private destroyMapViewIfNecessary()V
    .locals 1

    .line 894
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->mapView:Lcom/google/android/gms/maps/MapView;

    if-nez v0, :cond_0

    return-void

    .line 897
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->onDestroy()V

    const/4 v0, 0x0

    .line 898
    iput-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->mapView:Lcom/google/android/gms/maps/MapView;

    return-void
.end method

.method private getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;
    .locals 1

    .line 135
    iget-boolean v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->trackCameraPosition:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p0}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private hasLocationPermission()Z
    .locals 1

    .line 879
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-direct {p0, v0}, Lio/flutter/plugins/googlemaps/GoogleMapController;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 881
    invoke-direct {p0, v0}, Lio/flutter/plugins/googlemaps/GoogleMapController;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

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

.method private invalidateMapIfNeeded()V
    .locals 2

    .line 157
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->loadedCallbackPending:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 160
    iput-boolean v1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->loadedCallbackPending:Z

    .line 161
    new-instance v1, Lio/flutter/plugins/googlemaps/GoogleMapController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lio/flutter/plugins/googlemaps/GoogleMapController$$ExternalSyntheticLambda2;-><init>(Lio/flutter/plugins/googlemaps/GoogleMapController;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setOnMapLoadedCallback(Lcom/google/android/gms/maps/GoogleMap$OnMapLoadedCallback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$invalidateMapIfNeeded$0()V
    .locals 0

    .line 168
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->mapView:Lcom/google/android/gms/maps/MapView;

    if-eqz p0, :cond_0

    .line 169
    invoke-virtual {p0}, Lcom/google/android/gms/maps/MapView;->invalidate()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$invalidateMapIfNeeded$1()V
    .locals 1

    .line 166
    new-instance v0, Lio/flutter/plugins/googlemaps/GoogleMapController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lio/flutter/plugins/googlemaps/GoogleMapController$$ExternalSyntheticLambda0;-><init>(Lio/flutter/plugins/googlemaps/GoogleMapController;)V

    invoke-static {v0}, Lio/flutter/plugins/googlemaps/GoogleMapController;->postFrameCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$invalidateMapIfNeeded$2()V
    .locals 1

    const/4 v0, 0x0

    .line 163
    iput-boolean v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->loadedCallbackPending:Z

    .line 164
    new-instance v0, Lio/flutter/plugins/googlemaps/GoogleMapController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lio/flutter/plugins/googlemaps/GoogleMapController$$ExternalSyntheticLambda1;-><init>(Lio/flutter/plugins/googlemaps/GoogleMapController;)V

    invoke-static {v0}, Lio/flutter/plugins/googlemaps/GoogleMapController;->postFrameCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method private moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V
    .locals 0

    .line 127
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    return-void
.end method

.method private static postFrameCallback(Ljava/lang/Runnable;)V
    .locals 2

    .line 177
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    new-instance v1, Lio/flutter/plugins/googlemaps/GoogleMapController$1;

    invoke-direct {v1, p0}, Lio/flutter/plugins/googlemaps/GoogleMapController$1;-><init>(Ljava/lang/Runnable;)V

    .line 178
    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method

.method private setGoogleMapListener(Lio/flutter/plugins/googlemaps/GoogleMapListener;)V
    .locals 1

    .line 591
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    if-nez v0, :cond_0

    .line 592
    const-string p0, "GoogleMapController"

    const-string p1, "Controller was disposed before GoogleMap was ready."

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 595
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMap;->setOnCameraMoveStartedListener(Lcom/google/android/gms/maps/GoogleMap$OnCameraMoveStartedListener;)V

    .line 596
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMap;->setOnCameraMoveListener(Lcom/google/android/gms/maps/GoogleMap$OnCameraMoveListener;)V

    .line 597
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMap;->setOnCameraIdleListener(Lcom/google/android/gms/maps/GoogleMap$OnCameraIdleListener;)V

    .line 598
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMap;->setOnMarkerClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;)V

    .line 599
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMap;->setOnMarkerDragListener(Lcom/google/android/gms/maps/GoogleMap$OnMarkerDragListener;)V

    .line 600
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMap;->setOnPolygonClickListener(Lcom/google/android/gms/maps/GoogleMap$OnPolygonClickListener;)V

    .line 601
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMap;->setOnPolylineClickListener(Lcom/google/android/gms/maps/GoogleMap$OnPolylineClickListener;)V

    .line 602
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMap;->setOnCircleClickListener(Lcom/google/android/gms/maps/GoogleMap$OnCircleClickListener;)V

    .line 603
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMap;->setOnMapClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;)V

    .line 604
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/GoogleMap;->setOnMapLongClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMapLongClickListener;)V

    return-void
.end method

.method private updateInitialCircles()V
    .locals 1

    .line 846
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->circlesController:Lio/flutter/plugins/googlemaps/CirclesController;

    iget-object p0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->initialCircles:Ljava/util/List;

    invoke-virtual {v0, p0}, Lio/flutter/plugins/googlemaps/CirclesController;->addCircles(Ljava/util/List;)V

    return-void
.end method

.method private updateInitialMarkers()V
    .locals 1

    .line 807
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->markersController:Lio/flutter/plugins/googlemaps/MarkersController;

    iget-object p0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->initialMarkers:Ljava/util/List;

    invoke-virtual {v0, p0}, Lio/flutter/plugins/googlemaps/MarkersController;->addMarkers(Ljava/util/List;)V

    return-void
.end method

.method private updateInitialPolygons()V
    .locals 1

    .line 820
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->polygonsController:Lio/flutter/plugins/googlemaps/PolygonsController;

    iget-object p0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->initialPolygons:Ljava/util/List;

    invoke-virtual {v0, p0}, Lio/flutter/plugins/googlemaps/PolygonsController;->addPolygons(Ljava/util/List;)V

    return-void
.end method

.method private updateInitialPolylines()V
    .locals 1

    .line 833
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->polylinesController:Lio/flutter/plugins/googlemaps/PolylinesController;

    iget-object p0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->initialPolylines:Ljava/util/List;

    invoke-virtual {v0, p0}, Lio/flutter/plugins/googlemaps/PolylinesController;->addPolylines(Ljava/util/List;)V

    return-void
.end method

.method private updateInitialTileOverlays()V
    .locals 1

    .line 858
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->tileOverlaysController:Lio/flutter/plugins/googlemaps/TileOverlaysController;

    iget-object p0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->initialTileOverlays:Ljava/util/List;

    invoke-virtual {v0, p0}, Lio/flutter/plugins/googlemaps/TileOverlaysController;->addTileOverlays(Ljava/util/List;)V

    return-void
.end method

.method private updateMyLocationSettings()V
    .locals 2

    .line 863
    invoke-direct {p0}, Lio/flutter/plugins/googlemaps/GoogleMapController;->hasLocationPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 869
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    iget-boolean v1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->myLocationEnabled:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setMyLocationEnabled(Z)V

    .line 870
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v0

    iget-boolean p0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->myLocationButtonEnabled:Z

    invoke-virtual {v0, p0}, Lcom/google/android/gms/maps/UiSettings;->setMyLocationButtonEnabled(Z)V

    goto :goto_0

    .line 874
    :cond_0
    const-string p0, "GoogleMapController"

    const-string v0, "Cannot enable MyLocation layer as location permissions are not granted"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .line 577
    iget-boolean v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->disposed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 580
    iput-boolean v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->disposed:Z

    .line 581
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->methodChannel:Lio/flutter/plugin/common/MethodChannel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 582
    invoke-direct {p0, v1}, Lio/flutter/plugins/googlemaps/GoogleMapController;->setGoogleMapListener(Lio/flutter/plugins/googlemaps/GoogleMapListener;)V

    .line 583
    invoke-direct {p0}, Lio/flutter/plugins/googlemaps/GoogleMapController;->destroyMapViewIfNecessary()V

    .line 584
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->lifecycleProvider:Lio/flutter/plugins/googlemaps/LifecycleProvider;

    invoke-interface {v0}, Lio/flutter/plugins/googlemaps/LifecycleProvider;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 586
    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_1
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .line 113
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->mapView:Lcom/google/android/gms/maps/MapView;

    return-object p0
.end method

.method init()V
    .locals 1

    .line 122
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->lifecycleProvider:Lio/flutter/plugins/googlemaps/LifecycleProvider;

    invoke-interface {v0}, Lio/flutter/plugins/googlemaps/LifecycleProvider;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 123
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->mapView:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/maps/MapView;->getMapAsync(Lcom/google/android/gms/maps/OnMapReadyCallback;)V

    return-void
.end method

.method public onCameraIdle()V
    .locals 2

    .line 537
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->methodChannel:Lio/flutter/plugin/common/MethodChannel;

    iget p0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->id:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "map"

    invoke-static {v1, p0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    const-string v1, "camera#onIdle"

    invoke-virtual {v0, v1, p0}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onCameraMove()V
    .locals 3

    .line 527
    iget-boolean v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->trackCameraPosition:Z

    if-nez v0, :cond_0

    return-void

    .line 530
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 531
    iget-object v1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v1

    invoke-static {v1}, Lio/flutter/plugins/googlemaps/Convert;->cameraPositionToJson(Lcom/google/android/gms/maps/model/CameraPosition;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "position"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->methodChannel:Lio/flutter/plugin/common/MethodChannel;

    const-string v1, "camera#onMove"

    invoke-virtual {p0, v1, v0}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onCameraMoveStarted(I)V
    .locals 2

    .line 514
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 516
    :goto_0
    const-string p1, "isGesture"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->methodChannel:Lio/flutter/plugin/common/MethodChannel;

    const-string p1, "camera#onMoveStarted"

    invoke-virtual {p0, p1, v0}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onCircleClick(Lcom/google/android/gms/maps/model/Circle;)V
    .locals 0

    .line 572
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->circlesController:Lio/flutter/plugins/googlemaps/CirclesController;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Circle;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/flutter/plugins/googlemaps/CirclesController;->onCircleTap(Ljava/lang/String;)Z

    return-void
.end method

.method public onCreate(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    .line 611
    iget-boolean p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->disposed:Z

    if-eqz p1, :cond_0

    return-void

    .line 614
    :cond_0
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->mapView:Lcom/google/android/gms/maps/MapView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/MapView;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    .line 651
    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 652
    iget-boolean p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->disposed:Z

    if-eqz p1, :cond_0

    return-void

    .line 655
    :cond_0
    invoke-direct {p0}, Lio/flutter/plugins/googlemaps/GoogleMapController;->destroyMapViewIfNecessary()V

    return-void
.end method

.method public onInfoWindowClick(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 0

    .line 522
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->markersController:Lio/flutter/plugins/googlemaps/MarkersController;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/flutter/plugins/googlemaps/MarkersController;->onInfoWindowTap(Ljava/lang/String;)V

    return-void
.end method

.method public onMapClick(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 2

    .line 500
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 501
    const-string v1, "position"

    invoke-static {p1}, Lio/flutter/plugins/googlemaps/Convert;->latLngToJson(Lcom/google/android/gms/maps/model/LatLng;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->methodChannel:Lio/flutter/plugin/common/MethodChannel;

    const-string p1, "map#onTap"

    invoke-virtual {p0, p1, v0}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onMapLongClick(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 2

    .line 507
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 508
    const-string v1, "position"

    invoke-static {p1}, Lio/flutter/plugins/googlemaps/Convert;->latLngToJson(Lcom/google/android/gms/maps/model/LatLng;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->methodChannel:Lio/flutter/plugin/common/MethodChannel;

    const-string p1, "map#onLongPress"

    invoke-virtual {p0, p1, v0}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onMapReady(Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 4

    .line 189
    iput-object p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    .line 190
    iget-boolean v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->indoorEnabled:Z

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/GoogleMap;->setIndoorEnabled(Z)Z

    .line 191
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    iget-boolean v1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->trafficEnabled:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setTrafficEnabled(Z)V

    .line 192
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    iget-boolean v1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->buildingsEnabled:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setBuildingsEnabled(Z)V

    .line 193
    invoke-virtual {p1, p0}, Lcom/google/android/gms/maps/GoogleMap;->setOnInfoWindowClickListener(Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;)V

    .line 194
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->mapReadyResult:Lio/flutter/plugin/common/MethodChannel$Result;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 195
    invoke-interface {v0, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 196
    iput-object v1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->mapReadyResult:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 198
    :cond_0
    invoke-direct {p0, p0}, Lio/flutter/plugins/googlemaps/GoogleMapController;->setGoogleMapListener(Lio/flutter/plugins/googlemaps/GoogleMapListener;)V

    .line 199
    invoke-direct {p0}, Lio/flutter/plugins/googlemaps/GoogleMapController;->updateMyLocationSettings()V

    .line 200
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->markersController:Lio/flutter/plugins/googlemaps/MarkersController;

    invoke-virtual {v0, p1}, Lio/flutter/plugins/googlemaps/MarkersController;->setGoogleMap(Lcom/google/android/gms/maps/GoogleMap;)V

    .line 201
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->polygonsController:Lio/flutter/plugins/googlemaps/PolygonsController;

    invoke-virtual {v0, p1}, Lio/flutter/plugins/googlemaps/PolygonsController;->setGoogleMap(Lcom/google/android/gms/maps/GoogleMap;)V

    .line 202
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->polylinesController:Lio/flutter/plugins/googlemaps/PolylinesController;

    invoke-virtual {v0, p1}, Lio/flutter/plugins/googlemaps/PolylinesController;->setGoogleMap(Lcom/google/android/gms/maps/GoogleMap;)V

    .line 203
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->circlesController:Lio/flutter/plugins/googlemaps/CirclesController;

    invoke-virtual {v0, p1}, Lio/flutter/plugins/googlemaps/CirclesController;->setGoogleMap(Lcom/google/android/gms/maps/GoogleMap;)V

    .line 204
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->tileOverlaysController:Lio/flutter/plugins/googlemaps/TileOverlaysController;

    invoke-virtual {v0, p1}, Lio/flutter/plugins/googlemaps/TileOverlaysController;->setGoogleMap(Lcom/google/android/gms/maps/GoogleMap;)V

    .line 205
    invoke-direct {p0}, Lio/flutter/plugins/googlemaps/GoogleMapController;->updateInitialMarkers()V

    .line 206
    invoke-direct {p0}, Lio/flutter/plugins/googlemaps/GoogleMapController;->updateInitialPolygons()V

    .line 207
    invoke-direct {p0}, Lio/flutter/plugins/googlemaps/GoogleMapController;->updateInitialPolylines()V

    .line 208
    invoke-direct {p0}, Lio/flutter/plugins/googlemaps/GoogleMapController;->updateInitialCircles()V

    .line 209
    invoke-direct {p0}, Lio/flutter/plugins/googlemaps/GoogleMapController;->updateInitialTileOverlays()V

    .line 210
    iget-object p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->initialPadding:Ljava/util/List;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 211
    iget-object p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->initialPadding:Ljava/util/List;

    const/4 v0, 0x0

    .line 212
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->initialPadding:Ljava/util/List;

    const/4 v1, 0x1

    .line 213
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->initialPadding:Ljava/util/List;

    const/4 v2, 0x2

    .line 214
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->initialPadding:Ljava/util/List;

    const/4 v3, 0x3

    .line 215
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 211
    invoke-virtual {p0, p1, v0, v1, v2}, Lio/flutter/plugins/googlemaps/GoogleMapController;->setPadding(FFFF)V

    :cond_1
    return-void
.end method

.method public onMarkerClick(Lcom/google/android/gms/maps/model/Marker;)Z
    .locals 0

    .line 542
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->markersController:Lio/flutter/plugins/googlemaps/MarkersController;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/flutter/plugins/googlemaps/MarkersController;->onMarkerTap(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public onMarkerDrag(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 1

    .line 552
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->markersController:Lio/flutter/plugins/googlemaps/MarkersController;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lio/flutter/plugins/googlemaps/MarkersController;->onMarkerDrag(Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLng;)V

    return-void
.end method

.method public onMarkerDragEnd(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 1

    .line 557
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->markersController:Lio/flutter/plugins/googlemaps/MarkersController;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lio/flutter/plugins/googlemaps/MarkersController;->onMarkerDragEnd(Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLng;)V

    return-void
.end method

.method public onMarkerDragStart(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 1

    .line 547
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->markersController:Lio/flutter/plugins/googlemaps/MarkersController;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lio/flutter/plugins/googlemaps/MarkersController;->onMarkerDragStart(Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLng;)V

    return-void
.end method

.method public onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 7

    .line 221
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, -0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "camera#move"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v3, 0x1f

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "markers#showInfoWindow"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v3, 0x1e

    goto/16 :goto_0

    :sswitch_2
    const-string v1, "map#isLiteModeEnabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v3, 0x1d

    goto/16 :goto_0

    :sswitch_3
    const-string v1, "circles#update"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v3, 0x1c

    goto/16 :goto_0

    :sswitch_4
    const-string v1, "tileOverlays#clearTileCache"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v3, 0x1b

    goto/16 :goto_0

    :sswitch_5
    const-string v1, "tileOverlays#update"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v3, 0x1a

    goto/16 :goto_0

    :sswitch_6
    const-string v1, "map#isTrafficEnabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v3, 0x19

    goto/16 :goto_0

    :sswitch_7
    const-string v1, "markers#update"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v3, 0x18

    goto/16 :goto_0

    :sswitch_8
    const-string v1, "map#isZoomControlsEnabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v3, 0x17

    goto/16 :goto_0

    :sswitch_9
    const-string v1, "map#isCompassEnabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v3, 0x16

    goto/16 :goto_0

    :sswitch_a
    const-string v1, "map#isBuildingsEnabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v3, 0x15

    goto/16 :goto_0

    :sswitch_b
    const-string v1, "map#setStyle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v3, 0x14

    goto/16 :goto_0

    :sswitch_c
    const-string v1, "polylines#update"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v3, 0x13

    goto/16 :goto_0

    :sswitch_d
    const-string v1, "map#getLatLng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v3, 0x12

    goto/16 :goto_0

    :sswitch_e
    const-string v1, "map#takeSnapshot"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v3, 0x11

    goto/16 :goto_0

    :sswitch_f
    const-string v1, "map#isMapToolbarEnabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v3, 0x10

    goto/16 :goto_0

    :sswitch_10
    const-string v1, "map#waitForMap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v3, 0xf

    goto/16 :goto_0

    :sswitch_11
    const-string v1, "map#isZoomGesturesEnabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v3, 0xe

    goto/16 :goto_0

    :sswitch_12
    const-string v1, "map#getMinMaxZoomLevels"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v3, 0xd

    goto/16 :goto_0

    :sswitch_13
    const-string v1, "map#getZoomLevel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v3, 0xc

    goto/16 :goto_0

    :sswitch_14
    const-string v1, "markers#hideInfoWindow"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v3, 0xb

    goto/16 :goto_0

    :sswitch_15
    const-string v1, "map#isMyLocationButtonEnabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v3, 0xa

    goto/16 :goto_0

    :sswitch_16
    const-string v1, "map#isTiltGesturesEnabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto/16 :goto_0

    :cond_16
    const/16 v3, 0x9

    goto/16 :goto_0

    :sswitch_17
    const-string v1, "polygons#update"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto/16 :goto_0

    :cond_17
    const/16 v3, 0x8

    goto/16 :goto_0

    :sswitch_18
    const-string v1, "map#getTileOverlayInfo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_0

    :cond_18
    const/4 v3, 0x7

    goto :goto_0

    :sswitch_19
    const-string v1, "markers#isInfoWindowShown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_0

    :cond_19
    const/4 v3, 0x6

    goto :goto_0

    :sswitch_1a
    const-string v1, "camera#animate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_0

    :cond_1a
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_1b
    const-string v1, "map#getScreenCoordinate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_0

    :cond_1b
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_1c
    const-string v1, "map#update"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    goto :goto_0

    :cond_1c
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_1d
    const-string v1, "map#isRotateGesturesEnabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_0

    :cond_1d
    move v3, v2

    goto :goto_0

    :sswitch_1e
    const-string v1, "map#isScrollGesturesEnabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    goto :goto_0

    :cond_1e
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_1f
    const-string v1, "map#getVisibleRegion"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    goto :goto_0

    :cond_1f
    const/4 v3, 0x0

    .line 494
    :goto_0
    const-string v0, "tileOverlayId"

    const-string v1, "cameraUpdate"

    const-string v4, "markerId"

    const-string v5, "GoogleMap uninitialized"

    const/4 v6, 0x0

    packed-switch v3, :pswitch_data_0

    invoke-interface {p2}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V

    goto/16 :goto_2

    .line 297
    :pswitch_0
    invoke-virtual {p1, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    iget v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->density:F

    invoke-static {p1, v0}, Lio/flutter/plugins/googlemaps/Convert;->toCameraUpdate(Ljava/lang/Object;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object p1

    .line 298
    invoke-direct {p0, p1}, Lio/flutter/plugins/googlemaps/GoogleMapController;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 299
    invoke-interface {p2, v6}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 324
    :pswitch_1
    invoke-virtual {p1, v4}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 325
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->markersController:Lio/flutter/plugins/googlemaps/MarkersController;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/googlemaps/MarkersController;->showMarkerInfoWindow(Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto/16 :goto_2

    .line 401
    :pswitch_2
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->options:Lcom/google/android/gms/maps/GoogleMapOptions;

    invoke-virtual {p0}, Lcom/google/android/gms/maps/GoogleMapOptions;->getLiteMode()Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p2, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 366
    :pswitch_3
    invoke-direct {p0}, Lio/flutter/plugins/googlemaps/GoogleMapController;->invalidateMapIfNeeded()V

    .line 367
    const-string v0, "circlesToAdd"

    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 368
    iget-object v1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->circlesController:Lio/flutter/plugins/googlemaps/CirclesController;

    invoke-virtual {v1, v0}, Lio/flutter/plugins/googlemaps/CirclesController;->addCircles(Ljava/util/List;)V

    .line 369
    const-string v0, "circlesToChange"

    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 370
    iget-object v1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->circlesController:Lio/flutter/plugins/googlemaps/CirclesController;

    invoke-virtual {v1, v0}, Lio/flutter/plugins/googlemaps/CirclesController;->changeCircles(Ljava/util/List;)V

    .line 371
    const-string v0, "circleIdsToRemove"

    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 372
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->circlesController:Lio/flutter/plugins/googlemaps/CirclesController;

    invoke-virtual {p0, p1}, Lio/flutter/plugins/googlemaps/CirclesController;->removeCircles(Ljava/util/List;)V

    .line 373
    invoke-interface {p2, v6}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 481
    :pswitch_4
    invoke-direct {p0}, Lio/flutter/plugins/googlemaps/GoogleMapController;->invalidateMapIfNeeded()V

    .line 482
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 483
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->tileOverlaysController:Lio/flutter/plugins/googlemaps/TileOverlaysController;

    invoke-virtual {p0, p1}, Lio/flutter/plugins/googlemaps/TileOverlaysController;->clearTileCache(Ljava/lang/String;)V

    .line 484
    invoke-interface {p2, v6}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 469
    :pswitch_5
    invoke-direct {p0}, Lio/flutter/plugins/googlemaps/GoogleMapController;->invalidateMapIfNeeded()V

    .line 470
    const-string v0, "tileOverlaysToAdd"

    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 471
    iget-object v1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->tileOverlaysController:Lio/flutter/plugins/googlemaps/TileOverlaysController;

    invoke-virtual {v1, v0}, Lio/flutter/plugins/googlemaps/TileOverlaysController;->addTileOverlays(Ljava/util/List;)V

    .line 472
    const-string v0, "tileOverlaysToChange"

    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 473
    iget-object v1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->tileOverlaysController:Lio/flutter/plugins/googlemaps/TileOverlaysController;

    invoke-virtual {v1, v0}, Lio/flutter/plugins/googlemaps/TileOverlaysController;->changeTileOverlays(Ljava/util/List;)V

    .line 474
    const-string v0, "tileOverlayIdsToRemove"

    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 475
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->tileOverlaysController:Lio/flutter/plugins/googlemaps/TileOverlaysController;

    invoke-virtual {p0, p1}, Lio/flutter/plugins/googlemaps/TileOverlaysController;->removeTileOverlays(Ljava/util/List;)V

    .line 476
    invoke-interface {p2, v6}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 431
    :pswitch_6
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p0}, Lcom/google/android/gms/maps/GoogleMap;->isTrafficEnabled()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p2, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 312
    :pswitch_7
    invoke-direct {p0}, Lio/flutter/plugins/googlemaps/GoogleMapController;->invalidateMapIfNeeded()V

    .line 313
    const-string v0, "markersToAdd"

    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 314
    iget-object v1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->markersController:Lio/flutter/plugins/googlemaps/MarkersController;

    invoke-virtual {v1, v0}, Lio/flutter/plugins/googlemaps/MarkersController;->addMarkers(Ljava/util/List;)V

    .line 315
    const-string v0, "markersToChange"

    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 316
    iget-object v1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->markersController:Lio/flutter/plugins/googlemaps/MarkersController;

    invoke-virtual {v1, v0}, Lio/flutter/plugins/googlemaps/MarkersController;->changeMarkers(Ljava/util/List;)V

    .line 317
    const-string v0, "markerIdsToRemove"

    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 318
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->markersController:Lio/flutter/plugins/googlemaps/MarkersController;

    invoke-virtual {p0, p1}, Lio/flutter/plugins/googlemaps/MarkersController;->removeMarkers(Ljava/util/List;)V

    .line 319
    invoke-interface {p2, v6}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 406
    :pswitch_8
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p0}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/maps/UiSettings;->isZoomControlsEnabled()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p2, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 378
    :pswitch_9
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p0}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/maps/UiSettings;->isCompassEnabled()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p2, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 436
    :pswitch_a
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p0}, Lcom/google/android/gms/maps/GoogleMap;->isBuildingsEnabled()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p2, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 446
    :pswitch_b
    invoke-direct {p0}, Lio/flutter/plugins/googlemaps/GoogleMapController;->invalidateMapIfNeeded()V

    .line 448
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_21

    .line 449
    iget-object p1, p1, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_20

    .line 451
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p0, v6}, Lcom/google/android/gms/maps/GoogleMap;->setMapStyle(Lcom/google/android/gms/maps/model/MapStyleOptions;)Z

    move-result p0

    goto :goto_1

    .line 453
    :cond_20
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v0, Lcom/google/android/gms/maps/model/MapStyleOptions;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/MapStyleOptions;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/GoogleMap;->setMapStyle(Lcom/google/android/gms/maps/model/MapStyleOptions;)Z

    move-result p0

    goto :goto_1

    .line 456
    :cond_21
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p0, v6}, Lcom/google/android/gms/maps/GoogleMap;->setMapStyle(Lcom/google/android/gms/maps/model/MapStyleOptions;)Z

    move-result p0

    .line 458
    :goto_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 459
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez p0, :cond_22

    .line 461
    const-string p0, "Unable to set the map style. Please check console logs for errors."

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 464
    :cond_22
    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 354
    :pswitch_c
    invoke-direct {p0}, Lio/flutter/plugins/googlemaps/GoogleMapController;->invalidateMapIfNeeded()V

    .line 355
    const-string v0, "polylinesToAdd"

    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 356
    iget-object v1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->polylinesController:Lio/flutter/plugins/googlemaps/PolylinesController;

    invoke-virtual {v1, v0}, Lio/flutter/plugins/googlemaps/PolylinesController;->addPolylines(Ljava/util/List;)V

    .line 357
    const-string v0, "polylinesToChange"

    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 358
    iget-object v1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->polylinesController:Lio/flutter/plugins/googlemaps/PolylinesController;

    invoke-virtual {v1, v0}, Lio/flutter/plugins/googlemaps/PolylinesController;->changePolylines(Ljava/util/List;)V

    .line 359
    const-string v0, "polylineIdsToRemove"

    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 360
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->polylinesController:Lio/flutter/plugins/googlemaps/PolylinesController;

    invoke-virtual {p0, p1}, Lio/flutter/plugins/googlemaps/PolylinesController;->removePolylines(Ljava/util/List;)V

    .line 361
    invoke-interface {p2, v6}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 264
    :pswitch_d
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v0, :cond_23

    .line 265
    iget-object p1, p1, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    invoke-static {p1}, Lio/flutter/plugins/googlemaps/Convert;->toPoint(Ljava/lang/Object;)Landroid/graphics/Point;

    move-result-object p1

    .line 266
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p0}, Lcom/google/android/gms/maps/GoogleMap;->getProjection()Lcom/google/android/gms/maps/Projection;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/Projection;->fromScreenLocation(Landroid/graphics/Point;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p0

    .line 267
    invoke-static {p0}, Lio/flutter/plugins/googlemaps/Convert;->latLngToJson(Lcom/google/android/gms/maps/model/LatLng;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p2, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 269
    :cond_23
    const-string p0, "getLatLng called prior to map initialization"

    invoke-interface {p2, v5, p0, v6}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 276
    :pswitch_e
    iget-object p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz p1, :cond_24

    .line 278
    new-instance v0, Lio/flutter/plugins/googlemaps/GoogleMapController$2;

    invoke-direct {v0, p0, p2}, Lio/flutter/plugins/googlemaps/GoogleMapController$2;-><init>(Lio/flutter/plugins/googlemaps/GoogleMapController;Lio/flutter/plugin/common/MethodChannel$Result;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/GoogleMap;->snapshot(Lcom/google/android/gms/maps/GoogleMap$SnapshotReadyCallback;)V

    goto/16 :goto_2

    .line 290
    :cond_24
    const-string p0, "takeSnapshot"

    invoke-interface {p2, v5, p0, v6}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 383
    :pswitch_f
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p0}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/maps/UiSettings;->isMapToolbarEnabled()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p2, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 223
    :pswitch_10
    iget-object p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz p1, :cond_25

    .line 224
    invoke-interface {p2, v6}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void

    .line 227
    :cond_25
    iput-object p2, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->mapReadyResult:Lio/flutter/plugin/common/MethodChannel$Result;

    goto/16 :goto_2

    .line 396
    :pswitch_11
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p0}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/maps/UiSettings;->isZoomGesturesEnabled()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p2, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 388
    :pswitch_12
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 389
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getMinZoomLevel()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 390
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p0}, Lcom/google/android/gms/maps/GoogleMap;->getMaxZoomLevel()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 391
    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 441
    :pswitch_13
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p0}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object p0

    iget p0, p0, Lcom/google/android/gms/maps/model/CameraPosition;->zoom:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-interface {p2, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 330
    :pswitch_14
    invoke-virtual {p1, v4}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 331
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->markersController:Lio/flutter/plugins/googlemaps/MarkersController;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/googlemaps/MarkersController;->hideMarkerInfoWindow(Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto/16 :goto_2

    .line 426
    :pswitch_15
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p0}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/maps/UiSettings;->isMyLocationButtonEnabled()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p2, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 416
    :pswitch_16
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p0}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/maps/UiSettings;->isTiltGesturesEnabled()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p2, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 342
    :pswitch_17
    invoke-direct {p0}, Lio/flutter/plugins/googlemaps/GoogleMapController;->invalidateMapIfNeeded()V

    .line 343
    const-string v0, "polygonsToAdd"

    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 344
    iget-object v1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->polygonsController:Lio/flutter/plugins/googlemaps/PolygonsController;

    invoke-virtual {v1, v0}, Lio/flutter/plugins/googlemaps/PolygonsController;->addPolygons(Ljava/util/List;)V

    .line 345
    const-string v0, "polygonsToChange"

    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 346
    iget-object v1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->polygonsController:Lio/flutter/plugins/googlemaps/PolygonsController;

    invoke-virtual {v1, v0}, Lio/flutter/plugins/googlemaps/PolygonsController;->changePolygons(Ljava/util/List;)V

    .line 347
    const-string v0, "polygonIdsToRemove"

    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 348
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->polygonsController:Lio/flutter/plugins/googlemaps/PolygonsController;

    invoke-virtual {p0, p1}, Lio/flutter/plugins/googlemaps/PolygonsController;->removePolygons(Ljava/util/List;)V

    .line 349
    invoke-interface {p2, v6}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 489
    :pswitch_18
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 490
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->tileOverlaysController:Lio/flutter/plugins/googlemaps/TileOverlaysController;

    invoke-virtual {p0, p1}, Lio/flutter/plugins/googlemaps/TileOverlaysController;->getTileOverlayInfo(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p2, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 336
    :pswitch_19
    invoke-virtual {p1, v4}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 337
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->markersController:Lio/flutter/plugins/googlemaps/MarkersController;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/googlemaps/MarkersController;->isInfoWindowShown(Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto/16 :goto_2

    .line 305
    :pswitch_1a
    invoke-virtual {p1, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    iget v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->density:F

    invoke-static {p1, v0}, Lio/flutter/plugins/googlemaps/Convert;->toCameraUpdate(Ljava/lang/Object;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object p1

    .line 306
    invoke-direct {p0, p1}, Lio/flutter/plugins/googlemaps/GoogleMapController;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 307
    invoke-interface {p2, v6}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 250
    :pswitch_1b
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v0, :cond_26

    .line 251
    iget-object p1, p1, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    invoke-static {p1}, Lio/flutter/plugins/googlemaps/Convert;->toLatLng(Ljava/lang/Object;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p1

    .line 252
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p0}, Lcom/google/android/gms/maps/GoogleMap;->getProjection()Lcom/google/android/gms/maps/Projection;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/Projection;->toScreenLocation(Lcom/google/android/gms/maps/model/LatLng;)Landroid/graphics/Point;

    move-result-object p0

    .line 253
    invoke-static {p0}, Lio/flutter/plugins/googlemaps/Convert;->pointToJson(Landroid/graphics/Point;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p2, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_2

    .line 255
    :cond_26
    const-string p0, "getScreenCoordinate called prior to map initialization"

    invoke-interface {p2, v5, p0, v6}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 231
    :pswitch_1c
    const-string v0, "options"

    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, p0}, Lio/flutter/plugins/googlemaps/Convert;->interpretGoogleMapOptions(Ljava/lang/Object;Lio/flutter/plugins/googlemaps/GoogleMapOptionsSink;)V

    .line 232
    invoke-direct {p0}, Lio/flutter/plugins/googlemaps/GoogleMapController;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object p0

    invoke-static {p0}, Lio/flutter/plugins/googlemaps/Convert;->cameraPositionToJson(Lcom/google/android/gms/maps/model/CameraPosition;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p2, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_2

    .line 421
    :pswitch_1d
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p0}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/maps/UiSettings;->isRotateGesturesEnabled()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p2, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_2

    .line 411
    :pswitch_1e
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p0}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/maps/UiSettings;->isScrollGesturesEnabled()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p2, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_2

    .line 237
    :pswitch_1f
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz p0, :cond_27

    .line 238
    invoke-virtual {p0}, Lcom/google/android/gms/maps/GoogleMap;->getProjection()Lcom/google/android/gms/maps/Projection;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/maps/Projection;->getVisibleRegion()Lcom/google/android/gms/maps/model/VisibleRegion;

    move-result-object p0

    iget-object p0, p0, Lcom/google/android/gms/maps/model/VisibleRegion;->latLngBounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    .line 239
    invoke-static {p0}, Lio/flutter/plugins/googlemaps/Convert;->latlngBoundsToJson(Lcom/google/android/gms/maps/model/LatLngBounds;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p2, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_2

    .line 241
    :cond_27
    const-string p0, "getVisibleRegion called prior to map initialization"

    invoke-interface {p2, v5, p0, v6}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7b4b4569 -> :sswitch_1f
        -0x68801827 -> :sswitch_1e
        -0x63d6bc75 -> :sswitch_1d
        -0x52ced230 -> :sswitch_1c
        -0x51736f2d -> :sswitch_1b
        -0x4b5fdc7d -> :sswitch_1a
        -0x4ace63a1 -> :sswitch_19
        -0x4ab89a1f -> :sswitch_18
        -0x41b409ed -> :sswitch_17
        -0x238d7a57 -> :sswitch_16
        -0x22657943 -> :sswitch_15
        -0x1e4cec96 -> :sswitch_14
        -0x1aefc77e -> :sswitch_13
        0xf9f8443 -> :sswitch_12
        0x10dca5d3 -> :sswitch_11
        0x11956b2f -> :sswitch_10
        0x174d4211 -> :sswitch_f
        0x19decb32 -> :sswitch_e
        0x25216d95 -> :sswitch_d
        0x26623c99 -> :sswitch_c
        0x2a7eadb6 -> :sswitch_b
        0x39fcc9d3 -> :sswitch_a
        0x41768de0 -> :sswitch_9
        0x45de59e7 -> :sswitch_8
        0x4edb3513 -> :sswitch_7
        0x5c275a95 -> :sswitch_6
        0x5d47629b -> :sswitch_5
        0x65d75179 -> :sswitch_4
        0x6fac67a9 -> :sswitch_3
        0x722e9c9f -> :sswitch_2
        0x746e6365 -> :sswitch_1
        0x776bde6f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
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

.method public onPause(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    .line 635
    iget-boolean p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->disposed:Z

    if-eqz p1, :cond_0

    return-void

    .line 638
    :cond_0
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->mapView:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {p0}, Lcom/google/android/gms/maps/MapView;->onResume()V

    return-void
.end method

.method public onPolygonClick(Lcom/google/android/gms/maps/model/Polygon;)V
    .locals 0

    .line 562
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->polygonsController:Lio/flutter/plugins/googlemaps/PolygonsController;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Polygon;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/flutter/plugins/googlemaps/PolygonsController;->onPolygonTap(Ljava/lang/String;)Z

    return-void
.end method

.method public onPolylineClick(Lcom/google/android/gms/maps/model/Polyline;)V
    .locals 0

    .line 567
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->polylinesController:Lio/flutter/plugins/googlemaps/PolylinesController;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Polyline;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/flutter/plugins/googlemaps/PolylinesController;->onPolylineTap(Ljava/lang/String;)Z

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 660
    iget-boolean v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->disposed:Z

    if-eqz v0, :cond_0

    return-void

    .line 663
    :cond_0
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->mapView:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/MapView;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onResume(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    .line 627
    iget-boolean p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->disposed:Z

    if-eqz p1, :cond_0

    return-void

    .line 630
    :cond_0
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->mapView:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {p0}, Lcom/google/android/gms/maps/MapView;->onResume()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 668
    iget-boolean v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->disposed:Z

    if-eqz v0, :cond_0

    return-void

    .line 671
    :cond_0
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->mapView:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/MapView;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    .line 619
    iget-boolean p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->disposed:Z

    if-eqz p1, :cond_0

    return-void

    .line 622
    :cond_0
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->mapView:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {p0}, Lcom/google/android/gms/maps/MapView;->onStart()V

    return-void
.end method

.method public onStop(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    .line 643
    iget-boolean p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->disposed:Z

    if-eqz p1, :cond_0

    return-void

    .line 646
    :cond_0
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->mapView:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {p0}, Lcom/google/android/gms/maps/MapView;->onStop()V

    return-void
.end method

.method public setBuildingsEnabled(Z)V
    .locals 0

    .line 914
    iput-boolean p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->buildingsEnabled:Z

    return-void
.end method

.method public setCameraTargetBounds(Lcom/google/android/gms/maps/model/LatLngBounds;)V
    .locals 0

    .line 678
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/GoogleMap;->setLatLngBoundsForCameraTarget(Lcom/google/android/gms/maps/model/LatLngBounds;)V

    return-void
.end method

.method public setCompassEnabled(Z)V
    .locals 0

    .line 683
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p0}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/UiSettings;->setCompassEnabled(Z)V

    return-void
.end method

.method public setIndoorEnabled(Z)V
    .locals 0

    .line 902
    iput-boolean p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->indoorEnabled:Z

    return-void
.end method

.method public setInitialCircles(Ljava/lang/Object;)V
    .locals 1

    .line 838
    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    .line 839
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->initialCircles:Ljava/util/List;

    .line 840
    iget-object p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz p1, :cond_1

    .line 841
    invoke-direct {p0}, Lio/flutter/plugins/googlemaps/GoogleMapController;->updateInitialCircles()V

    :cond_1
    return-void
.end method

.method public setInitialMarkers(Ljava/lang/Object;)V
    .locals 1

    .line 799
    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    .line 800
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->initialMarkers:Ljava/util/List;

    .line 801
    iget-object p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz p1, :cond_1

    .line 802
    invoke-direct {p0}, Lio/flutter/plugins/googlemaps/GoogleMapController;->updateInitialMarkers()V

    :cond_1
    return-void
.end method

.method setInitialPadding(FFFF)V
    .locals 1

    .line 742
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->initialPadding:Ljava/util/List;

    if-nez v0, :cond_0

    .line 743
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->initialPadding:Ljava/util/List;

    goto :goto_0

    .line 745
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 747
    :goto_0
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->initialPadding:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 748
    iget-object p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->initialPadding:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 749
    iget-object p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->initialPadding:Ljava/util/List;

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 750
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->initialPadding:Ljava/util/List;

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setInitialPolygons(Ljava/lang/Object;)V
    .locals 1

    .line 812
    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    .line 813
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->initialPolygons:Ljava/util/List;

    .line 814
    iget-object p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz p1, :cond_1

    .line 815
    invoke-direct {p0}, Lio/flutter/plugins/googlemaps/GoogleMapController;->updateInitialPolygons()V

    :cond_1
    return-void
.end method

.method public setInitialPolylines(Ljava/lang/Object;)V
    .locals 1

    .line 825
    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    .line 826
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->initialPolylines:Ljava/util/List;

    .line 827
    iget-object p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz p1, :cond_1

    .line 828
    invoke-direct {p0}, Lio/flutter/plugins/googlemaps/GoogleMapController;->updateInitialPolylines()V

    :cond_1
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

    .line 851
    iput-object p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->initialTileOverlays:Ljava/util/List;

    .line 852
    iget-object p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz p1, :cond_0

    .line 853
    invoke-direct {p0}, Lio/flutter/plugins/googlemaps/GoogleMapController;->updateInitialTileOverlays()V

    :cond_0
    return-void
.end method

.method public setLiteModeEnabled(Z)V
    .locals 0

    .line 761
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->options:Lcom/google/android/gms/maps/GoogleMapOptions;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/GoogleMapOptions;->liteMode(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    return-void
.end method

.method public setMapToolbarEnabled(Z)V
    .locals 0

    .line 688
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p0}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/UiSettings;->setMapToolbarEnabled(Z)V

    return-void
.end method

.method public setMapType(I)V
    .locals 0

    .line 693
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/GoogleMap;->setMapType(I)V

    return-void
.end method

.method public setMinMaxZoomPreference(Ljava/lang/Float;Ljava/lang/Float;)V
    .locals 1

    .line 718
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->resetMinMaxZoomPreference()V

    if-eqz p1, :cond_0

    .line 720
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMap;->setMinZoomPreference(F)V

    :cond_0
    if-eqz p2, :cond_1

    .line 723
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/GoogleMap;->setMaxZoomPreference(F)V

    :cond_1
    return-void
.end method

.method public setMyLocationButtonEnabled(Z)V
    .locals 1

    .line 777
    iget-boolean v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->myLocationButtonEnabled:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 780
    :cond_0
    iput-boolean p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->myLocationButtonEnabled:Z

    .line 781
    iget-object p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz p1, :cond_1

    .line 782
    invoke-direct {p0}, Lio/flutter/plugins/googlemaps/GoogleMapController;->updateMyLocationSettings()V

    :cond_1
    return-void
.end method

.method public setMyLocationEnabled(Z)V
    .locals 1

    .line 766
    iget-boolean v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->myLocationEnabled:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 769
    :cond_0
    iput-boolean p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->myLocationEnabled:Z

    .line 770
    iget-object p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz p1, :cond_1

    .line 771
    invoke-direct {p0}, Lio/flutter/plugins/googlemaps/GoogleMapController;->updateMyLocationSettings()V

    :cond_1
    return-void
.end method

.method public setPadding(FFFF)V
    .locals 1

    .line 729
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v0, :cond_0

    .line 730
    iget p0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->density:F

    mul-float/2addr p2, p0

    float-to-int p2, p2

    mul-float/2addr p1, p0

    float-to-int p1, p1

    mul-float/2addr p4, p0

    float-to-int p4, p4

    mul-float/2addr p3, p0

    float-to-int p0, p3

    invoke-virtual {v0, p2, p1, p4, p0}, Lcom/google/android/gms/maps/GoogleMap;->setPadding(IIII)V

    goto :goto_0

    .line 736
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/flutter/plugins/googlemaps/GoogleMapController;->setInitialPadding(FFFF)V

    :goto_0
    return-void
.end method

.method public setRotateGesturesEnabled(Z)V
    .locals 0

    .line 703
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p0}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/UiSettings;->setRotateGesturesEnabled(Z)V

    return-void
.end method

.method public setScrollGesturesEnabled(Z)V
    .locals 0

    .line 708
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p0}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/UiSettings;->setScrollGesturesEnabled(Z)V

    return-void
.end method

.method public setTiltGesturesEnabled(Z)V
    .locals 0

    .line 713
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p0}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/UiSettings;->setTiltGesturesEnabled(Z)V

    return-void
.end method

.method public setTrackCameraPosition(Z)V
    .locals 0

    .line 698
    iput-boolean p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->trackCameraPosition:Z

    return-void
.end method

.method public setTrafficEnabled(Z)V
    .locals 0

    .line 906
    iput-boolean p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->trafficEnabled:Z

    .line 907
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    if-nez p0, :cond_0

    return-void

    .line 910
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/GoogleMap;->setTrafficEnabled(Z)V

    return-void
.end method

.method setView(Lcom/google/android/gms/maps/MapView;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->mapView:Lcom/google/android/gms/maps/MapView;

    return-void
.end method

.method public setZoomControlsEnabled(Z)V
    .locals 1

    .line 788
    iget-boolean v0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->zoomControlsEnabled:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 791
    :cond_0
    iput-boolean p1, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->zoomControlsEnabled:Z

    .line 792
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz p0, :cond_1

    .line 793
    invoke-virtual {p0}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/UiSettings;->setZoomControlsEnabled(Z)V

    :cond_1
    return-void
.end method

.method public setZoomGesturesEnabled(Z)V
    .locals 0

    .line 755
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/GoogleMapController;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p0}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/UiSettings;->setZoomGesturesEnabled(Z)V

    return-void
.end method
