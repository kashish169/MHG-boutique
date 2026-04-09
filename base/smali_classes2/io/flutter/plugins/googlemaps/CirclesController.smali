.class Lio/flutter/plugins/googlemaps/CirclesController;
.super Ljava/lang/Object;
.source "CirclesController.java"


# instance fields
.field private final circleIdToController:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/flutter/plugins/googlemaps/CircleController;",
            ">;"
        }
    .end annotation
.end field

.field private final density:F

.field private googleMap:Lcom/google/android/gms/maps/GoogleMap;

.field private final googleMapsCircleIdToDartCircleId:Ljava/util/Map;
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


# direct methods
.method constructor <init>(Lio/flutter/plugin/common/MethodChannel;F)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/flutter/plugins/googlemaps/CirclesController;->circleIdToController:Ljava/util/Map;

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/flutter/plugins/googlemaps/CirclesController;->googleMapsCircleIdToDartCircleId:Ljava/util/Map;

    .line 26
    iput-object p1, p0, Lio/flutter/plugins/googlemaps/CirclesController;->methodChannel:Lio/flutter/plugin/common/MethodChannel;

    .line 27
    iput p2, p0, Lio/flutter/plugins/googlemaps/CirclesController;->density:F

    return-void
.end method

.method private addCircle(Ljava/lang/Object;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 84
    :cond_0
    new-instance v0, Lio/flutter/plugins/googlemaps/CircleBuilder;

    iget v1, p0, Lio/flutter/plugins/googlemaps/CirclesController;->density:F

    invoke-direct {v0, v1}, Lio/flutter/plugins/googlemaps/CircleBuilder;-><init>(F)V

    .line 85
    invoke-static {p1, v0}, Lio/flutter/plugins/googlemaps/Convert;->interpretCircleOptions(Ljava/lang/Object;Lio/flutter/plugins/googlemaps/CircleOptionsSink;)Ljava/lang/String;

    move-result-object p1

    .line 86
    invoke-virtual {v0}, Lio/flutter/plugins/googlemaps/CircleBuilder;->build()Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v1

    .line 87
    invoke-virtual {v0}, Lio/flutter/plugins/googlemaps/CircleBuilder;->consumeTapEvents()Z

    move-result v0

    invoke-direct {p0, p1, v1, v0}, Lio/flutter/plugins/googlemaps/CirclesController;->addCircle(Ljava/lang/String;Lcom/google/android/gms/maps/model/CircleOptions;Z)V

    return-void
.end method

.method private addCircle(Ljava/lang/String;Lcom/google/android/gms/maps/model/CircleOptions;Z)V
    .locals 2

    .line 91
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/CirclesController;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/maps/GoogleMap;->addCircle(Lcom/google/android/gms/maps/model/CircleOptions;)Lcom/google/android/gms/maps/model/Circle;

    move-result-object p2

    .line 92
    new-instance v0, Lio/flutter/plugins/googlemaps/CircleController;

    iget v1, p0, Lio/flutter/plugins/googlemaps/CirclesController;->density:F

    invoke-direct {v0, p2, p3, v1}, Lio/flutter/plugins/googlemaps/CircleController;-><init>(Lcom/google/android/gms/maps/model/Circle;ZF)V

    .line 93
    iget-object p3, p0, Lio/flutter/plugins/googlemaps/CirclesController;->circleIdToController:Ljava/util/Map;

    invoke-interface {p3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/CirclesController;->googleMapsCircleIdToDartCircleId:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/google/android/gms/maps/model/Circle;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private changeCircle(Ljava/lang/Object;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 101
    :cond_0
    invoke-static {p1}, Lio/flutter/plugins/googlemaps/CirclesController;->getCircleId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 102
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/CirclesController;->circleIdToController:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/flutter/plugins/googlemaps/CircleController;

    if-eqz p0, :cond_1

    .line 104
    invoke-static {p1, p0}, Lio/flutter/plugins/googlemaps/Convert;->interpretCircleOptions(Ljava/lang/Object;Lio/flutter/plugins/googlemaps/CircleOptionsSink;)Ljava/lang/String;

    :cond_1
    return-void
.end method

.method private static getCircleId(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 110
    check-cast p0, Ljava/util/Map;

    .line 111
    const-string v0, "circleId"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method addCircles(Ljava/util/List;)V
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
    invoke-direct {p0, v0}, Lio/flutter/plugins/googlemaps/CirclesController;->addCircle(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method changeCircles(Ljava/util/List;)V
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
    invoke-direct {p0, v0}, Lio/flutter/plugins/googlemaps/CirclesController;->changeCircle(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method onCircleTap(Ljava/lang/String;)Z
    .locals 4

    .line 68
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/CirclesController;->googleMapsCircleIdToDartCircleId:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 72
    :cond_0
    iget-object v1, p0, Lio/flutter/plugins/googlemaps/CirclesController;->methodChannel:Lio/flutter/plugin/common/MethodChannel;

    const-string v2, "circle#onTap"

    invoke-static {p1}, Lio/flutter/plugins/googlemaps/Convert;->circleIdToJson(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/CirclesController;->circleIdToController:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/flutter/plugins/googlemaps/CircleController;

    if-eqz p0, :cond_1

    .line 75
    invoke-virtual {p0}, Lio/flutter/plugins/googlemaps/CircleController;->consumeTapEvents()Z

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method removeCircles(Ljava/util/List;)V
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
    iget-object v1, p0, Lio/flutter/plugins/googlemaps/CirclesController;->circleIdToController:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/flutter/plugins/googlemaps/CircleController;

    if-eqz v0, :cond_1

    .line 61
    invoke-virtual {v0}, Lio/flutter/plugins/googlemaps/CircleController;->remove()V

    .line 62
    iget-object v1, p0, Lio/flutter/plugins/googlemaps/CirclesController;->googleMapsCircleIdToDartCircleId:Ljava/util/Map;

    invoke-virtual {v0}, Lio/flutter/plugins/googlemaps/CircleController;->getGoogleMapsCircleId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-void
.end method

.method setGoogleMap(Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lio/flutter/plugins/googlemaps/CirclesController;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    return-void
.end method
