.class Lio/flutter/plugins/googlemaps/TileOverlayController;
.super Ljava/lang/Object;
.source "TileOverlayController.java"

# interfaces
.implements Lio/flutter/plugins/googlemaps/TileOverlaySink;


# instance fields
.field private final tileOverlay:Lcom/google/android/gms/maps/model/TileOverlay;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/model/TileOverlay;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lio/flutter/plugins/googlemaps/TileOverlayController;->tileOverlay:Lcom/google/android/gms/maps/model/TileOverlay;

    return-void
.end method


# virtual methods
.method clearTileCache()V
    .locals 0

    .line 25
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/TileOverlayController;->tileOverlay:Lcom/google/android/gms/maps/model/TileOverlay;

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/TileOverlay;->clearTileCache()V

    return-void
.end method

.method getTileOverlayInfo()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 30
    iget-object v1, p0, Lio/flutter/plugins/googlemaps/TileOverlayController;->tileOverlay:Lcom/google/android/gms/maps/model/TileOverlay;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/TileOverlay;->getFadeIn()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "fadeIn"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget-object v1, p0, Lio/flutter/plugins/googlemaps/TileOverlayController;->tileOverlay:Lcom/google/android/gms/maps/model/TileOverlay;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/TileOverlay;->getTransparency()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "transparency"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iget-object v1, p0, Lio/flutter/plugins/googlemaps/TileOverlayController;->tileOverlay:Lcom/google/android/gms/maps/model/TileOverlay;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/TileOverlay;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iget-object v1, p0, Lio/flutter/plugins/googlemaps/TileOverlayController;->tileOverlay:Lcom/google/android/gms/maps/model/TileOverlay;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/TileOverlay;->getZIndex()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "zIndex"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/TileOverlayController;->tileOverlay:Lcom/google/android/gms/maps/model/TileOverlay;

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/TileOverlay;->isVisible()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string v1, "visible"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method remove()V
    .locals 0

    .line 21
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/TileOverlayController;->tileOverlay:Lcom/google/android/gms/maps/model/TileOverlay;

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/TileOverlay;->remove()V

    return-void
.end method

.method public setFadeIn(Z)V
    .locals 0

    .line 40
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/TileOverlayController;->tileOverlay:Lcom/google/android/gms/maps/model/TileOverlay;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/model/TileOverlay;->setFadeIn(Z)V

    return-void
.end method

.method public setTileProvider(Lcom/google/android/gms/maps/model/TileProvider;)V
    .locals 0

    return-void
.end method

.method public setTransparency(F)V
    .locals 0

    .line 45
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/TileOverlayController;->tileOverlay:Lcom/google/android/gms/maps/model/TileOverlay;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/model/TileOverlay;->setTransparency(F)V

    return-void
.end method

.method public setVisible(Z)V
    .locals 0

    .line 55
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/TileOverlayController;->tileOverlay:Lcom/google/android/gms/maps/model/TileOverlay;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/model/TileOverlay;->setVisible(Z)V

    return-void
.end method

.method public setZIndex(F)V
    .locals 0

    .line 50
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/TileOverlayController;->tileOverlay:Lcom/google/android/gms/maps/model/TileOverlay;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/model/TileOverlay;->setZIndex(F)V

    return-void
.end method
