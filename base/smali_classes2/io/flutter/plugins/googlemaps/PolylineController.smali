.class Lio/flutter/plugins/googlemaps/PolylineController;
.super Ljava/lang/Object;
.source "PolylineController.java"

# interfaces
.implements Lio/flutter/plugins/googlemaps/PolylineOptionsSink;


# instance fields
.field private consumeTapEvents:Z

.field private final density:F

.field private final googleMapsPolylineId:Ljava/lang/String;

.field private final polyline:Lcom/google/android/gms/maps/model/Polyline;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/model/Polyline;ZF)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lio/flutter/plugins/googlemaps/PolylineController;->polyline:Lcom/google/android/gms/maps/model/Polyline;

    .line 22
    iput-boolean p2, p0, Lio/flutter/plugins/googlemaps/PolylineController;->consumeTapEvents:Z

    .line 23
    iput p3, p0, Lio/flutter/plugins/googlemaps/PolylineController;->density:F

    .line 24
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Polyline;->getId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/flutter/plugins/googlemaps/PolylineController;->googleMapsPolylineId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method consumeTapEvents()Z
    .locals 0

    .line 92
    iget-boolean p0, p0, Lio/flutter/plugins/googlemaps/PolylineController;->consumeTapEvents:Z

    return p0
.end method

.method getGoogleMapsPolylineId()Ljava/lang/String;
    .locals 0

    .line 88
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/PolylineController;->googleMapsPolylineId:Ljava/lang/String;

    return-object p0
.end method

.method remove()V
    .locals 0

    .line 28
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/PolylineController;->polyline:Lcom/google/android/gms/maps/model/Polyline;

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/Polyline;->remove()V

    return-void
.end method

.method public setColor(I)V
    .locals 0

    .line 39
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/PolylineController;->polyline:Lcom/google/android/gms/maps/model/Polyline;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/model/Polyline;->setColor(I)V

    return-void
.end method

.method public setConsumeTapEvents(Z)V
    .locals 0

    .line 33
    iput-boolean p1, p0, Lio/flutter/plugins/googlemaps/PolylineController;->consumeTapEvents:Z

    .line 34
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/PolylineController;->polyline:Lcom/google/android/gms/maps/model/Polyline;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/model/Polyline;->setClickable(Z)V

    return-void
.end method

.method public setEndCap(Lcom/google/android/gms/maps/model/Cap;)V
    .locals 0

    .line 44
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/PolylineController;->polyline:Lcom/google/android/gms/maps/model/Polyline;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/model/Polyline;->setEndCap(Lcom/google/android/gms/maps/model/Cap;)V

    return-void
.end method

.method public setGeodesic(Z)V
    .locals 0

    .line 49
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/PolylineController;->polyline:Lcom/google/android/gms/maps/model/Polyline;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/model/Polyline;->setGeodesic(Z)V

    return-void
.end method

.method public setJointType(I)V
    .locals 0

    .line 54
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/PolylineController;->polyline:Lcom/google/android/gms/maps/model/Polyline;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/model/Polyline;->setJointType(I)V

    return-void
.end method

.method public setPattern(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/PatternItem;",
            ">;)V"
        }
    .end annotation

    .line 59
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/PolylineController;->polyline:Lcom/google/android/gms/maps/model/Polyline;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/model/Polyline;->setPattern(Ljava/util/List;)V

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

    .line 64
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/PolylineController;->polyline:Lcom/google/android/gms/maps/model/Polyline;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/model/Polyline;->setPoints(Ljava/util/List;)V

    return-void
.end method

.method public setStartCap(Lcom/google/android/gms/maps/model/Cap;)V
    .locals 0

    .line 69
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/PolylineController;->polyline:Lcom/google/android/gms/maps/model/Polyline;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/model/Polyline;->setStartCap(Lcom/google/android/gms/maps/model/Cap;)V

    return-void
.end method

.method public setVisible(Z)V
    .locals 0

    .line 74
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/PolylineController;->polyline:Lcom/google/android/gms/maps/model/Polyline;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/model/Polyline;->setVisible(Z)V

    return-void
.end method

.method public setWidth(F)V
    .locals 1

    .line 79
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/PolylineController;->polyline:Lcom/google/android/gms/maps/model/Polyline;

    iget p0, p0, Lio/flutter/plugins/googlemaps/PolylineController;->density:F

    mul-float/2addr p1, p0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/Polyline;->setWidth(F)V

    return-void
.end method

.method public setZIndex(F)V
    .locals 0

    .line 84
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/PolylineController;->polyline:Lcom/google/android/gms/maps/model/Polyline;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/model/Polyline;->setZIndex(F)V

    return-void
.end method
