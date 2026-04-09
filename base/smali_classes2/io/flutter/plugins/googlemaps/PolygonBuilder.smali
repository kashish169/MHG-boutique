.class Lio/flutter/plugins/googlemaps/PolygonBuilder;
.super Ljava/lang/Object;
.source "PolygonBuilder.java"

# interfaces
.implements Lio/flutter/plugins/googlemaps/PolygonOptionsSink;


# instance fields
.field private consumeTapEvents:Z

.field private final density:F

.field private final polygonOptions:Lcom/google/android/gms/maps/model/PolygonOptions;


# direct methods
.method constructor <init>(F)V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lcom/google/android/gms/maps/model/PolygonOptions;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/PolygonOptions;-><init>()V

    iput-object v0, p0, Lio/flutter/plugins/googlemaps/PolygonBuilder;->polygonOptions:Lcom/google/android/gms/maps/model/PolygonOptions;

    .line 18
    iput p1, p0, Lio/flutter/plugins/googlemaps/PolygonBuilder;->density:F

    return-void
.end method


# virtual methods
.method build()Lcom/google/android/gms/maps/model/PolygonOptions;
    .locals 0

    .line 22
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/PolygonBuilder;->polygonOptions:Lcom/google/android/gms/maps/model/PolygonOptions;

    return-object p0
.end method

.method consumeTapEvents()Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lio/flutter/plugins/googlemaps/PolygonBuilder;->consumeTapEvents:Z

    return p0
.end method

.method public setConsumeTapEvents(Z)V
    .locals 0

    .line 53
    iput-boolean p1, p0, Lio/flutter/plugins/googlemaps/PolygonBuilder;->consumeTapEvents:Z

    .line 54
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/PolygonBuilder;->polygonOptions:Lcom/google/android/gms/maps/model/PolygonOptions;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/model/PolygonOptions;->clickable(Z)Lcom/google/android/gms/maps/model/PolygonOptions;

    return-void
.end method

.method public setFillColor(I)V
    .locals 0

    .line 31
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/PolygonBuilder;->polygonOptions:Lcom/google/android/gms/maps/model/PolygonOptions;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/model/PolygonOptions;->fillColor(I)Lcom/google/android/gms/maps/model/PolygonOptions;

    return-void
.end method

.method public setGeodesic(Z)V
    .locals 0

    .line 59
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/PolygonBuilder;->polygonOptions:Lcom/google/android/gms/maps/model/PolygonOptions;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/model/PolygonOptions;->geodesic(Z)Lcom/google/android/gms/maps/model/PolygonOptions;

    return-void
.end method

.method public setHoles(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;>;)V"
        }
    .end annotation

    .line 46
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 47
    iget-object v1, p0, Lio/flutter/plugins/googlemaps/PolygonBuilder;->polygonOptions:Lcom/google/android/gms/maps/model/PolygonOptions;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/model/PolygonOptions;->addHole(Ljava/lang/Iterable;)Lcom/google/android/gms/maps/model/PolygonOptions;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setPoints(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;)V"
        }
    .end annotation

    .line 41
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/PolygonBuilder;->polygonOptions:Lcom/google/android/gms/maps/model/PolygonOptions;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/model/PolygonOptions;->addAll(Ljava/lang/Iterable;)Lcom/google/android/gms/maps/model/PolygonOptions;

    return-void
.end method

.method public setStrokeColor(I)V
    .locals 0

    .line 36
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/PolygonBuilder;->polygonOptions:Lcom/google/android/gms/maps/model/PolygonOptions;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/model/PolygonOptions;->strokeColor(I)Lcom/google/android/gms/maps/model/PolygonOptions;

    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 1

    .line 69
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/PolygonBuilder;->polygonOptions:Lcom/google/android/gms/maps/model/PolygonOptions;

    iget p0, p0, Lio/flutter/plugins/googlemaps/PolygonBuilder;->density:F

    mul-float/2addr p1, p0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/PolygonOptions;->strokeWidth(F)Lcom/google/android/gms/maps/model/PolygonOptions;

    return-void
.end method

.method public setVisible(Z)V
    .locals 0

    .line 64
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/PolygonBuilder;->polygonOptions:Lcom/google/android/gms/maps/model/PolygonOptions;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/model/PolygonOptions;->visible(Z)Lcom/google/android/gms/maps/model/PolygonOptions;

    return-void
.end method

.method public setZIndex(F)V
    .locals 0

    .line 74
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/PolygonBuilder;->polygonOptions:Lcom/google/android/gms/maps/model/PolygonOptions;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/model/PolygonOptions;->zIndex(F)Lcom/google/android/gms/maps/model/PolygonOptions;

    return-void
.end method
