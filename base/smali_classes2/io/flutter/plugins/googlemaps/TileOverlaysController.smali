.class Lio/flutter/plugins/googlemaps/TileOverlaysController;
.super Ljava/lang/Object;
.source "TileOverlaysController.java"


# instance fields
.field private googleMap:Lcom/google/android/gms/maps/GoogleMap;

.field private final methodChannel:Lio/flutter/plugin/common/MethodChannel;

.field private final tileOverlayIdToController:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/flutter/plugins/googlemaps/TileOverlayController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/flutter/plugin/common/MethodChannel;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/flutter/plugins/googlemaps/TileOverlaysController;->tileOverlayIdToController:Ljava/util/Map;

    .line 23
    iput-object p1, p0, Lio/flutter/plugins/googlemaps/TileOverlaysController;->methodChannel:Lio/flutter/plugin/common/MethodChannel;

    return-void
.end method

.method private addTileOverlay(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 85
    :cond_0
    new-instance v0, Lio/flutter/plugins/googlemaps/TileOverlayBuilder;

    invoke-direct {v0}, Lio/flutter/plugins/googlemaps/TileOverlayBuilder;-><init>()V

    .line 87
    invoke-static {p1, v0}, Lio/flutter/plugins/googlemaps/Convert;->interpretTileOverlayOptions(Ljava/util/Map;Lio/flutter/plugins/googlemaps/TileOverlaySink;)Ljava/lang/String;

    move-result-object p1

    .line 88
    new-instance v1, Lio/flutter/plugins/googlemaps/TileProviderController;

    iget-object v2, p0, Lio/flutter/plugins/googlemaps/TileOverlaysController;->methodChannel:Lio/flutter/plugin/common/MethodChannel;

    invoke-direct {v1, v2, p1}, Lio/flutter/plugins/googlemaps/TileProviderController;-><init>(Lio/flutter/plugin/common/MethodChannel;Ljava/lang/String;)V

    .line 90
    invoke-virtual {v0, v1}, Lio/flutter/plugins/googlemaps/TileOverlayBuilder;->setTileProvider(Lcom/google/android/gms/maps/model/TileProvider;)V

    .line 91
    invoke-virtual {v0}, Lio/flutter/plugins/googlemaps/TileOverlayBuilder;->build()Lcom/google/android/gms/maps/model/TileOverlayOptions;

    move-result-object v0

    .line 92
    iget-object v1, p0, Lio/flutter/plugins/googlemaps/TileOverlaysController;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/GoogleMap;->addTileOverlay(Lcom/google/android/gms/maps/model/TileOverlayOptions;)Lcom/google/android/gms/maps/model/TileOverlay;

    move-result-object v0

    .line 93
    new-instance v1, Lio/flutter/plugins/googlemaps/TileOverlayController;

    invoke-direct {v1, v0}, Lio/flutter/plugins/googlemaps/TileOverlayController;-><init>(Lcom/google/android/gms/maps/model/TileOverlay;)V

    .line 94
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/TileOverlaysController;->tileOverlayIdToController:Ljava/util/Map;

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private changeTileOverlay(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 101
    :cond_0
    invoke-static {p1}, Lio/flutter/plugins/googlemaps/TileOverlaysController;->getTileOverlayId(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 102
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/TileOverlaysController;->tileOverlayIdToController:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/flutter/plugins/googlemaps/TileOverlayController;

    if-eqz p0, :cond_1

    .line 104
    invoke-static {p1, p0}, Lio/flutter/plugins/googlemaps/Convert;->interpretTileOverlayOptions(Ljava/util/Map;Lio/flutter/plugins/googlemaps/TileOverlaySink;)Ljava/lang/String;

    :cond_1
    return-void
.end method

.method private static getTileOverlayId(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 118
    const-string v0, "tileOverlayId"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private removeTileOverlay(Ljava/lang/String;)V
    .locals 1

    .line 109
    iget-object v0, p0, Lio/flutter/plugins/googlemaps/TileOverlaysController;->tileOverlayIdToController:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/flutter/plugins/googlemaps/TileOverlayController;

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {v0}, Lio/flutter/plugins/googlemaps/TileOverlayController;->remove()V

    .line 112
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/TileOverlaysController;->tileOverlayIdToController:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method addTileOverlays(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 34
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 35
    invoke-direct {p0, v0}, Lio/flutter/plugins/googlemaps/TileOverlaysController;->addTileOverlay(Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method changeTileOverlays(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 43
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 44
    invoke-direct {p0, v0}, Lio/flutter/plugins/googlemaps/TileOverlaysController;->changeTileOverlay(Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method clearTileCache(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 64
    :cond_0
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/TileOverlaysController;->tileOverlayIdToController:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/flutter/plugins/googlemaps/TileOverlayController;

    if-eqz p0, :cond_1

    .line 66
    invoke-virtual {p0}, Lio/flutter/plugins/googlemaps/TileOverlayController;->clearTileCache()V

    :cond_1
    return-void
.end method

.method getTileOverlayInfo(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 74
    :cond_0
    iget-object p0, p0, Lio/flutter/plugins/googlemaps/TileOverlaysController;->tileOverlayIdToController:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/flutter/plugins/googlemaps/TileOverlayController;

    if-nez p0, :cond_1

    return-object v0

    .line 78
    :cond_1
    invoke-virtual {p0}, Lio/flutter/plugins/googlemaps/TileOverlayController;->getTileOverlayInfo()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method removeTileOverlays(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 52
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    goto :goto_0

    .line 56
    :cond_1
    invoke-direct {p0, v0}, Lio/flutter/plugins/googlemaps/TileOverlaysController;->removeTileOverlay(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method setGoogleMap(Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lio/flutter/plugins/googlemaps/TileOverlaysController;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    return-void
.end method
