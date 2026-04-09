.class Lio/flutter/plugins/googlemaps/PolylinesController;
.super Ljava/lang/Object;
.source "PolylinesController.java"


# instance fields
.field private final density:F

.field private googleMap:Lcom/google/android/gms/maps/GoogleMap;

.field private final googleMapsPolylineIdToDartPolylineId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final methodChannel:Lio/flutter/plugin/common/MethodChannel;

.field private final polylineIdToController:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/flutter/plugins/googlemaps/PolylineController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/flutter/plugin/common/MethodChannel;F)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/flutter/plugins/googlemaps/PolylinesController;->polylineIdToController:Ljava/util/Map;

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/flutter/plugins/googlemaps/PolylinesController;->googleMapsPolylineIdToDartPolylineId:Ljava/util/Map;

    .line 26
    iput-object p1, p0, Lio/flutter/plugins/googlemaps/PolylinesController;->methodChannel:Lio/flutter/plugin/common/MethodChannel;

    .line 27
    iput p2, p0, Lio/flutter/plugins/googlemaps/PolylinesController;->density:F

    return-void
.end method

.method private addPolyline(Ljava/lang/Object;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 84
    :cond_0
    new-instance v0, Lio/flutter/plugins/googlemaps/PolylineBuilder;

    iget v1, p0, Lio/flutter/plugins/googlemaps/PolylinesController;->density:F

    invoke-direct {v0, v1}, Lio/flutter/plugins/googlemaps/PolylineBuilder;-><init>(F)V

    .line 85
    invoke-static {p1, v0}, Lio/flutter/plugins/googlemaps/Convert;->interpretPolylineOptions(Ljava/lang/Object;Lio/flutter/plugins/googlemaps/PolylineOptionsSink;)Ljava/lang/String;

    move-result-object p1

    .line 86
    invoke-virtual {v0}, Lio/flutter/plugins/googlemaps/PolylineBuilder;->build()Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v1

    .line 87
    invoke-virtual {v0}, Lio/flutter/plugins/googlemaps/PolylineBuilder;->consumeTapEvents()Z

    move-result v0

    invoke-direct {p0, p1, v1, v0}, Lio/flutter/plugins/googlemaps/PolylinesController;->addPolyline(Ljava/lang/String;Lcom/google/android/gms/maps/model/PolylineOptions;Z)V

    return-void
.end method

.method private addPolyline(Ljava/lang/String;Lcom/google/android/gms/maps/model/PolylineOptions;Z)V
    .locals 2

    .line 92
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/PolylinesController;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/maps/GoogleMap;->addPolyline(Lcom/google/android/gms/maps/model/PolylineOptions;)Lcom/google/android/gms/maps/model/Polyline;

    move-result-object p2

    .line 93
    new-instance v0, Lio/flutter/plugins/googlemaps/PolylineController;

    iget v1, p0, Lio/flutter/plugins/googlemaps/PolylinesController;->density:F

    invoke-direct {v0, p2, p3, v1}, Lio/flutter/plugins/googlemaps/PolylineController;-><init>(Lcom/google/android/gms/maps/model/Polyline;ZF)V

    .line 94
    iget-object p3, p0, Lio/flutter/plugins/googlemaps/PolylinesController;->polylineIdToController:Ljava/util/Map;

    invoke-interface {p3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/PolylinesController;->googleMapsPolylineIdToDartPolylineId:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/google/android/gms/maps/model/Polyline;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private changePolyline(Ljava/lang/Object;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 102
    :cond_0
    invoke-static {p1}, Lio/flutter/plugins/googlemaps/PolylinesController;->getPolylineId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 103
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/PolylinesController;->polylineIdToController:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/flutter/plugins/googlemaps/PolylineController;

    if-eqz p0, :cond_1

    .line 105
    invoke-static {p1, p0}, Lio/flutter/plugins/googlemaps/Convert;->interpretPolylineOptions(Ljava/lang/Object;Lio/flutter/plugins/googlemaps/PolylineOptionsSink;)Ljava/lang/String;

    :cond_1
    return-void
.end method

.method private static getPolylineId(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 111
    check-cast p0, Ljava/util/Map;

    .line 112
    const-string v0, "polylineId"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method addPolylines(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 36
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 37
    invoke-direct {p0, v0}, Lio/flutter/plugins/googlemaps/PolylinesController;->addPolyline(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method changePolylines(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 44
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 45
    invoke-direct {p0, v0}, Lio/flutter/plugins/googlemaps/PolylinesController;->changePolyline(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method onPolylineTap(Ljava/lang/String;)Z
    .locals 4

    .line 68
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/PolylinesController;->googleMapsPolylineIdToDartPolylineId:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 72
    :cond_0
    iget-object v1, p0, Lio/flutter/plugins/googlemaps/PolylinesController;->methodChannel:Lio/flutter/plugin/common/MethodChannel;

    const-string v2, "polyline#onTap"

    invoke-static {p1}, Lio/flutter/plugins/googlemaps/Convert;->polylineIdToJson(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/PolylinesController;->polylineIdToController:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/flutter/plugins/googlemaps/PolylineController;

    if-eqz p0, :cond_1

    .line 75
    invoke-virtual {p0}, Lio/flutter/plugins/googlemaps/PolylineController;->consumeTapEvents()Z

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method removePolylines(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 54
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 58
    :cond_2
    check-cast v0, Ljava/lang/String;

    .line 59
    iget-object v1, p0, Lio/flutter/plugins/googlemaps/PolylinesController;->polylineIdToController:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/flutter/plugins/googlemaps/PolylineController;

    if-eqz v0, :cond_1

    .line 61
    invoke-virtual {v0}, Lio/flutter/plugins/googlemaps/PolylineController;->remove()V

    .line 62
    iget-object v1, p0, Lio/flutter/plugins/googlemaps/PolylinesController;->googleMapsPolylineIdToDartPolylineId:Ljava/util/Map;

    invoke-virtual {v0}, Lio/flutter/plugins/googlemaps/PolylineController;->getGoogleMapsPolylineId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-void
.end method

.method setGoogleMap(Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lio/flutter/plugins/googlemaps/PolylinesController;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    return-void
.end method
