.class Lio/flutter/plugins/googlemaps/MarkerController;
.super Ljava/lang/Object;
.source "MarkerController.java"

# interfaces
.implements Lio/flutter/plugins/googlemaps/MarkerOptionsSink;


# instance fields
.field private consumeTapEvents:Z

.field private final googleMapsMarkerId:Ljava/lang/String;

.field private final marker:Lcom/google/android/gms/maps/model/Marker;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/model/Marker;Z)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lio/flutter/plugins/googlemaps/MarkerController;->marker:Lcom/google/android/gms/maps/model/Marker;

    .line 20
    iput-boolean p2, p0, Lio/flutter/plugins/googlemaps/MarkerController;->consumeTapEvents:Z

    .line 21
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/flutter/plugins/googlemaps/MarkerController;->googleMapsMarkerId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method consumeTapEvents()Z
    .locals 0

    .line 94
    iget-boolean p0, p0, Lio/flutter/plugins/googlemaps/MarkerController;->consumeTapEvents:Z

    return p0
.end method

.method getGoogleMapsMarkerId()Ljava/lang/String;
    .locals 0

    .line 90
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/MarkerController;->googleMapsMarkerId:Ljava/lang/String;

    return-object p0
.end method

.method public hideInfoWindow()V
    .locals 0

    .line 102
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/MarkerController;->marker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/Marker;->hideInfoWindow()V

    return-void
.end method

.method public isInfoWindowShown()Z
    .locals 0

    .line 106
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/MarkerController;->marker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/Marker;->isInfoWindowShown()Z

    move-result p0

    return p0
.end method

.method remove()V
    .locals 0

    .line 25
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/MarkerController;->marker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    return-void
.end method

.method public setAlpha(F)V
    .locals 0

    .line 30
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/MarkerController;->marker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/model/Marker;->setAlpha(F)V

    return-void
.end method

.method public setAnchor(FF)V
    .locals 0

    .line 35
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/MarkerController;->marker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/maps/model/Marker;->setAnchor(FF)V

    return-void
.end method

.method public setConsumeTapEvents(Z)V
    .locals 0

    .line 40
    iput-boolean p1, p0, Lio/flutter/plugins/googlemaps/MarkerController;->consumeTapEvents:Z

    return-void
.end method

.method public setDraggable(Z)V
    .locals 0

    .line 45
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/MarkerController;->marker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/model/Marker;->setDraggable(Z)V

    return-void
.end method

.method public setFlat(Z)V
    .locals 0

    .line 50
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/MarkerController;->marker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/model/Marker;->setFlat(Z)V

    return-void
.end method

.method public setIcon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)V
    .locals 0

    .line 55
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/MarkerController;->marker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/model/Marker;->setIcon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)V

    return-void
.end method

.method public setInfoWindowAnchor(FF)V
    .locals 0

    .line 60
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/MarkerController;->marker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/maps/model/Marker;->setInfoWindowAnchor(FF)V

    return-void
.end method

.method public setInfoWindowText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 65
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/MarkerController;->marker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/Marker;->setTitle(Ljava/lang/String;)V

    .line 66
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/MarkerController;->marker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {p0, p2}, Lcom/google/android/gms/maps/model/Marker;->setSnippet(Ljava/lang/String;)V

    return-void
.end method

.method public setPosition(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 0

    .line 71
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/MarkerController;->marker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/model/Marker;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    return-void
.end method

.method public setRotation(F)V
    .locals 0

    .line 76
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/MarkerController;->marker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/model/Marker;->setRotation(F)V

    return-void
.end method

.method public setVisible(Z)V
    .locals 0

    .line 81
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/MarkerController;->marker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/model/Marker;->setVisible(Z)V

    return-void
.end method

.method public setZIndex(F)V
    .locals 0

    .line 86
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/MarkerController;->marker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/model/Marker;->setZIndex(F)V

    return-void
.end method

.method public showInfoWindow()V
    .locals 0

    .line 98
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/MarkerController;->marker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/Marker;->showInfoWindow()V

    return-void
.end method
