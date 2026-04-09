.class public final Lcom/alexmiller/map_launcher/MapLauncherPlugin;
.super Ljava/lang/Object;
.source "MapLauncherPlugin.kt"

# interfaces
.implements Lio/flutter/embedding/engine/plugins/FlutterPlugin;
.implements Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMapLauncherPlugin.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MapLauncherPlugin.kt\ncom/alexmiller/map_launcher/MapLauncherPlugin\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,114:1\n766#2:115\n857#2,2:116\n1747#2,3:118\n1549#2:122\n1620#2,3:123\n1#3:121\n*S KotlinDebug\n*F\n+ 1 MapLauncherPlugin.kt\ncom/alexmiller/map_launcher/MapLauncherPlugin\n*L\n60#1:115\n60#1:116,2\n67#1:118,3\n87#1:122\n87#1:123,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003J\u000e\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\n0\tH\u0002J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J \u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\u0016H\u0002J\u0012\u0010\u0017\u001a\u00020\u00112\u0008\u0008\u0001\u0010\u0018\u001a\u00020\u0019H\u0016J\u0012\u0010\u001a\u001a\u00020\u00112\u0008\u0008\u0001\u0010\u001b\u001a\u00020\u0019H\u0016J\u001c\u0010\u001c\u001a\u00020\u00112\u0008\u0008\u0001\u0010\u001d\u001a\u00020\u001e2\u0008\u0008\u0001\u0010\u0015\u001a\u00020\u0016H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082.\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/alexmiller/map_launcher/MapLauncherPlugin;",
        "Lio/flutter/embedding/engine/plugins/FlutterPlugin;",
        "Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;",
        "()V",
        "channel",
        "Lio/flutter/plugin/common/MethodChannel;",
        "context",
        "Landroid/content/Context;",
        "maps",
        "",
        "Lcom/alexmiller/map_launcher/MapModel;",
        "getInstalledMaps",
        "isMapAvailable",
        "",
        "type",
        "",
        "launchMap",
        "",
        "mapType",
        "Lcom/alexmiller/map_launcher/MapType;",
        "url",
        "result",
        "Lio/flutter/plugin/common/MethodChannel$Result;",
        "onAttachedToEngine",
        "flutterPluginBinding",
        "Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;",
        "onDetachedFromEngine",
        "binding",
        "onMethodCall",
        "call",
        "Lio/flutter/plugin/common/MethodCall;",
        "map_launcher_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private channel:Lio/flutter/plugin/common/MethodChannel;

.field private context:Landroid/content/Context;

.field private final maps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alexmiller/map_launcher/MapModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x19

    .line 32
    new-array v0, v0, [Lcom/alexmiller/map_launcher/MapModel;

    new-instance v1, Lcom/alexmiller/map_launcher/MapModel;

    sget-object v2, Lcom/alexmiller/map_launcher/MapType;->google:Lcom/alexmiller/map_launcher/MapType;

    const-string v3, "Google Maps"

    const-string v4, "com.google.android.apps.maps"

    const-string v5, "geo://"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alexmiller/map_launcher/MapModel;-><init>(Lcom/alexmiller/map_launcher/MapType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 33
    new-instance v1, Lcom/alexmiller/map_launcher/MapModel;

    sget-object v2, Lcom/alexmiller/map_launcher/MapType;->googleGo:Lcom/alexmiller/map_launcher/MapType;

    const-string v3, "Google Maps Go"

    const-string v4, "com.google.android.apps.mapslite"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alexmiller/map_launcher/MapModel;-><init>(Lcom/alexmiller/map_launcher/MapType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 34
    new-instance v1, Lcom/alexmiller/map_launcher/MapModel;

    sget-object v2, Lcom/alexmiller/map_launcher/MapType;->amap:Lcom/alexmiller/map_launcher/MapType;

    const-string v3, "com.autonavi.minimap"

    const-string v4, "iosamap://"

    const-string v5, "Amap"

    invoke-direct {v1, v2, v5, v3, v4}, Lcom/alexmiller/map_launcher/MapModel;-><init>(Lcom/alexmiller/map_launcher/MapType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 35
    new-instance v1, Lcom/alexmiller/map_launcher/MapModel;

    sget-object v2, Lcom/alexmiller/map_launcher/MapType;->baidu:Lcom/alexmiller/map_launcher/MapType;

    const-string v3, "com.baidu.BaiduMap"

    const-string v4, "baidumap://"

    const-string v5, "Baidu Maps"

    invoke-direct {v1, v2, v5, v3, v4}, Lcom/alexmiller/map_launcher/MapModel;-><init>(Lcom/alexmiller/map_launcher/MapType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 36
    new-instance v1, Lcom/alexmiller/map_launcher/MapModel;

    sget-object v2, Lcom/alexmiller/map_launcher/MapType;->waze:Lcom/alexmiller/map_launcher/MapType;

    const-string v3, "com.waze"

    const-string/jumbo v4, "waze://"

    const-string v5, "Waze"

    invoke-direct {v1, v2, v5, v3, v4}, Lcom/alexmiller/map_launcher/MapModel;-><init>(Lcom/alexmiller/map_launcher/MapType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 37
    new-instance v1, Lcom/alexmiller/map_launcher/MapModel;

    sget-object v2, Lcom/alexmiller/map_launcher/MapType;->yandexNavi:Lcom/alexmiller/map_launcher/MapType;

    const-string v3, "ru.yandex.yandexnavi"

    const-string/jumbo v4, "yandexnavi://"

    const-string v5, "Yandex Navigator"

    invoke-direct {v1, v2, v5, v3, v4}, Lcom/alexmiller/map_launcher/MapModel;-><init>(Lcom/alexmiller/map_launcher/MapType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 38
    new-instance v1, Lcom/alexmiller/map_launcher/MapModel;

    sget-object v2, Lcom/alexmiller/map_launcher/MapType;->yandexMaps:Lcom/alexmiller/map_launcher/MapType;

    const-string v3, "ru.yandex.yandexmaps"

    const-string/jumbo v4, "yandexmaps://"

    const-string v5, "Yandex Maps"

    invoke-direct {v1, v2, v5, v3, v4}, Lcom/alexmiller/map_launcher/MapModel;-><init>(Lcom/alexmiller/map_launcher/MapType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 39
    new-instance v1, Lcom/alexmiller/map_launcher/MapModel;

    sget-object v2, Lcom/alexmiller/map_launcher/MapType;->citymapper:Lcom/alexmiller/map_launcher/MapType;

    const-string v3, "com.citymapper.app.release"

    const-string v4, "citymapper://"

    const-string v5, "Citymapper"

    invoke-direct {v1, v2, v5, v3, v4}, Lcom/alexmiller/map_launcher/MapModel;-><init>(Lcom/alexmiller/map_launcher/MapType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 40
    new-instance v1, Lcom/alexmiller/map_launcher/MapModel;

    sget-object v2, Lcom/alexmiller/map_launcher/MapType;->osmand:Lcom/alexmiller/map_launcher/MapType;

    const-string v3, "OsmAnd"

    const-string v4, "net.osmand"

    const-string v5, "osmandmaps://"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alexmiller/map_launcher/MapModel;-><init>(Lcom/alexmiller/map_launcher/MapType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 41
    new-instance v1, Lcom/alexmiller/map_launcher/MapModel;

    sget-object v2, Lcom/alexmiller/map_launcher/MapType;->osmandplus:Lcom/alexmiller/map_launcher/MapType;

    const-string v3, "OsmAnd+"

    const-string v4, "net.osmand.plus"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alexmiller/map_launcher/MapModel;-><init>(Lcom/alexmiller/map_launcher/MapType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 42
    new-instance v1, Lcom/alexmiller/map_launcher/MapModel;

    sget-object v2, Lcom/alexmiller/map_launcher/MapType;->doubleGis:Lcom/alexmiller/map_launcher/MapType;

    const-string v3, "ru.dublgis.dgismobile"

    const-string v4, "dgis://"

    const-string v5, "2GIS"

    invoke-direct {v1, v2, v5, v3, v4}, Lcom/alexmiller/map_launcher/MapModel;-><init>(Lcom/alexmiller/map_launcher/MapType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 43
    new-instance v1, Lcom/alexmiller/map_launcher/MapModel;

    sget-object v2, Lcom/alexmiller/map_launcher/MapType;->tencent:Lcom/alexmiller/map_launcher/MapType;

    const-string v3, "com.tencent.map"

    const-string v4, "qqmap://"

    const-string v5, "Tencent (QQ Maps)"

    invoke-direct {v1, v2, v5, v3, v4}, Lcom/alexmiller/map_launcher/MapModel;-><init>(Lcom/alexmiller/map_launcher/MapType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 44
    new-instance v1, Lcom/alexmiller/map_launcher/MapModel;

    sget-object v2, Lcom/alexmiller/map_launcher/MapType;->here:Lcom/alexmiller/map_launcher/MapType;

    const-string v3, "com.here.app.maps"

    const-string v4, "here-location://"

    const-string v5, "HERE WeGo"

    invoke-direct {v1, v2, v5, v3, v4}, Lcom/alexmiller/map_launcher/MapModel;-><init>(Lcom/alexmiller/map_launcher/MapType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 45
    new-instance v1, Lcom/alexmiller/map_launcher/MapModel;

    sget-object v2, Lcom/alexmiller/map_launcher/MapType;->petal:Lcom/alexmiller/map_launcher/MapType;

    const-string v3, "com.huawei.maps.app"

    const-string v4, "petalmaps://"

    const-string v5, "Petal Maps"

    invoke-direct {v1, v2, v5, v3, v4}, Lcom/alexmiller/map_launcher/MapModel;-><init>(Lcom/alexmiller/map_launcher/MapType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 46
    new-instance v1, Lcom/alexmiller/map_launcher/MapModel;

    sget-object v2, Lcom/alexmiller/map_launcher/MapType;->tomtomgo:Lcom/alexmiller/map_launcher/MapType;

    const-string v3, "com.tomtom.gplay.navapp"

    const-string/jumbo v4, "tomtomgo://"

    const-string v5, "TomTom Go"

    invoke-direct {v1, v2, v5, v3, v4}, Lcom/alexmiller/map_launcher/MapModel;-><init>(Lcom/alexmiller/map_launcher/MapType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 47
    new-instance v1, Lcom/alexmiller/map_launcher/MapModel;

    sget-object v2, Lcom/alexmiller/map_launcher/MapType;->tomtomgofleet:Lcom/alexmiller/map_launcher/MapType;

    const-string v3, "com.tomtom.gplay.navapp.gofleet"

    const-string/jumbo v4, "tomtomgofleet://"

    const-string v5, "TomTom Go Fleet"

    invoke-direct {v1, v2, v5, v3, v4}, Lcom/alexmiller/map_launcher/MapModel;-><init>(Lcom/alexmiller/map_launcher/MapType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 48
    new-instance v1, Lcom/alexmiller/map_launcher/MapModel;

    sget-object v2, Lcom/alexmiller/map_launcher/MapType;->sygicTruck:Lcom/alexmiller/map_launcher/MapType;

    const-string v3, "com.sygic.truck"

    const-string v4, "com.sygic.aura://"

    const-string v5, "Sygic Truck"

    invoke-direct {v1, v2, v5, v3, v4}, Lcom/alexmiller/map_launcher/MapModel;-><init>(Lcom/alexmiller/map_launcher/MapType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 49
    new-instance v1, Lcom/alexmiller/map_launcher/MapModel;

    sget-object v2, Lcom/alexmiller/map_launcher/MapType;->copilot:Lcom/alexmiller/map_launcher/MapType;

    const-string v3, "com.alk.copilot.mapviewer"

    const-string v4, "copilot://"

    const-string v5, "CoPilot"

    invoke-direct {v1, v2, v5, v3, v4}, Lcom/alexmiller/map_launcher/MapModel;-><init>(Lcom/alexmiller/map_launcher/MapType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 50
    new-instance v1, Lcom/alexmiller/map_launcher/MapModel;

    sget-object v2, Lcom/alexmiller/map_launcher/MapType;->flitsmeister:Lcom/alexmiller/map_launcher/MapType;

    const-string v3, "nl.flitsmeister"

    const-string v4, "flitsmeister://"

    const-string v5, "Flitsmeister"

    invoke-direct {v1, v2, v5, v3, v4}, Lcom/alexmiller/map_launcher/MapModel;-><init>(Lcom/alexmiller/map_launcher/MapType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 51
    new-instance v1, Lcom/alexmiller/map_launcher/MapModel;

    sget-object v2, Lcom/alexmiller/map_launcher/MapType;->truckmeister:Lcom/alexmiller/map_launcher/MapType;

    const-string v3, "nl.flitsmeister.flux"

    const-string/jumbo v4, "truckmeister://"

    const-string v5, "Truckmeister"

    invoke-direct {v1, v2, v5, v3, v4}, Lcom/alexmiller/map_launcher/MapModel;-><init>(Lcom/alexmiller/map_launcher/MapType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 52
    new-instance v1, Lcom/alexmiller/map_launcher/MapModel;

    sget-object v2, Lcom/alexmiller/map_launcher/MapType;->naver:Lcom/alexmiller/map_launcher/MapType;

    const-string v3, "com.nhn.android.nmap"

    const-string v4, "nmap://"

    const-string v5, "Naver Map"

    invoke-direct {v1, v2, v5, v3, v4}, Lcom/alexmiller/map_launcher/MapModel;-><init>(Lcom/alexmiller/map_launcher/MapType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 53
    new-instance v1, Lcom/alexmiller/map_launcher/MapModel;

    sget-object v2, Lcom/alexmiller/map_launcher/MapType;->kakao:Lcom/alexmiller/map_launcher/MapType;

    const-string v3, "net.daum.android.map"

    const-string v4, "kakaomap://"

    const-string v5, "Kakao Maps"

    invoke-direct {v1, v2, v5, v3, v4}, Lcom/alexmiller/map_launcher/MapModel;-><init>(Lcom/alexmiller/map_launcher/MapType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 54
    new-instance v1, Lcom/alexmiller/map_launcher/MapModel;

    sget-object v2, Lcom/alexmiller/map_launcher/MapType;->tmap:Lcom/alexmiller/map_launcher/MapType;

    const-string v3, "com.skt.tmap.ku"

    const-string/jumbo v4, "tmap://"

    const-string v5, "TMap"

    invoke-direct {v1, v2, v5, v3, v4}, Lcom/alexmiller/map_launcher/MapModel;-><init>(Lcom/alexmiller/map_launcher/MapType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 55
    new-instance v1, Lcom/alexmiller/map_launcher/MapModel;

    sget-object v2, Lcom/alexmiller/map_launcher/MapType;->mapyCz:Lcom/alexmiller/map_launcher/MapType;

    const-string v3, "cz.seznam.mapy"

    const-string v4, "https://"

    const-string v5, "Mapy CZ"

    invoke-direct {v1, v2, v5, v3, v4}, Lcom/alexmiller/map_launcher/MapModel;-><init>(Lcom/alexmiller/map_launcher/MapType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x17

    aput-object v1, v0, v2

    .line 56
    new-instance v1, Lcom/alexmiller/map_launcher/MapModel;

    sget-object v2, Lcom/alexmiller/map_launcher/MapType;->mappls:Lcom/alexmiller/map_launcher/MapType;

    const-string v3, "com.mmi.maps"

    const-string v4, "mappls://"

    const-string v5, "Mappls MapmyIndia"

    invoke-direct {v1, v2, v5, v3, v4}, Lcom/alexmiller/map_launcher/MapModel;-><init>(Lcom/alexmiller/map_launcher/MapType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x18

    aput-object v1, v0, v2

    .line 31
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alexmiller/map_launcher/MapLauncherPlugin;->maps:Ljava/util/List;

    return-void
.end method

.method private final getInstalledMaps()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alexmiller/map_launcher/MapModel;",
            ">;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/alexmiller/map_launcher/MapLauncherPlugin;->maps:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 115
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 116
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/alexmiller/map_launcher/MapModel;

    .line 61
    iget-object v4, p0, Lcom/alexmiller/map_launcher/MapLauncherPlugin;->context:Landroid/content/Context;

    const/4 v5, 0x0

    if-nez v4, :cond_1

    const-string v4, "context"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v5

    :cond_1
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/alexmiller/map_launcher/MapModel;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    :cond_2
    if-eqz v5, :cond_0

    .line 116
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 117
    :cond_3
    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method private final isMapAvailable(Ljava/lang/String;)Z
    .locals 2

    .line 66
    invoke-direct {p0}, Lcom/alexmiller/map_launcher/MapLauncherPlugin;->getInstalledMaps()Ljava/util/List;

    move-result-object p0

    .line 67
    check-cast p0, Ljava/lang/Iterable;

    .line 118
    instance-of v0, p0, Ljava/util/Collection;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 119
    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alexmiller/map_launcher/MapModel;

    .line 67
    invoke-virtual {v0}, Lcom/alexmiller/map_launcher/MapModel;->getMapType()Lcom/alexmiller/map_launcher/MapType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alexmiller/map_launcher/MapType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method private final launchMap(Lcom/alexmiller/map_launcher/MapType;Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 4

    .line 71
    iget-object v0, p0, Lcom/alexmiller/map_launcher/MapLauncherPlugin;->context:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "context"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    .line 72
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {v2, v3, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p2, 0x10000000

    .line 73
    invoke-virtual {v2, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 74
    iget-object p0, p0, Lcom/alexmiller/map_launcher/MapLauncherPlugin;->maps:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/alexmiller/map_launcher/MapModel;

    invoke-virtual {v3}, Lcom/alexmiller/map_launcher/MapModel;->getMapType()Lcom/alexmiller/map_launcher/MapType;

    move-result-object v3

    if-ne v3, p1, :cond_1

    goto :goto_0

    :cond_2
    move-object p2, v1

    :goto_0
    check-cast p2, Lcom/alexmiller/map_launcher/MapModel;

    if-eqz p2, :cond_3

    .line 76
    invoke-virtual {p2}, Lcom/alexmiller/map_launcher/MapModel;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    :cond_3
    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 80
    invoke-interface {p3, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onAttachedToEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 3

    const-string v0, "flutterPluginBinding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    new-instance v0, Lio/flutter/plugin/common/MethodChannel;

    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object v1

    const-string v2, "map_launcher"

    invoke-direct {v0, v1, v2}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alexmiller/map_launcher/MapLauncherPlugin;->channel:Lio/flutter/plugin/common/MethodChannel;

    .line 27
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "getApplicationContext(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/alexmiller/map_launcher/MapLauncherPlugin;->context:Landroid/content/Context;

    .line 28
    iget-object p1, p0, Lcom/alexmiller/map_launcher/MapLauncherPlugin;->channel:Lio/flutter/plugin/common/MethodChannel;

    if-nez p1, :cond_0

    const-string p1, "channel"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    check-cast p0, Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;

    invoke-virtual {p1, p0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 1

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    iget-object p0, p0, Lcom/alexmiller/map_launcher/MapLauncherPlugin;->channel:Lio/flutter/plugin/common/MethodChannel;

    const/4 p1, 0x0

    if-nez p0, :cond_0

    const-string p0, "channel"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p0, p1

    :cond_0
    invoke-virtual {p0, p1}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    return-void
.end method

.method public onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 5

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const-string v2, "null cannot be cast to non-null type kotlin.collections.Map<*, *>"

    const-string v3, "mapType"

    const-string v4, "null cannot be cast to non-null type kotlin.String"

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string p1, "getInstalledMaps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 86
    :cond_0
    invoke-direct {p0}, Lcom/alexmiller/map_launcher/MapLauncherPlugin;->getInstalledMaps()Ljava/util/List;

    move-result-object p0

    .line 87
    check-cast p0, Ljava/lang/Iterable;

    .line 122
    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p1, Ljava/util/Collection;

    .line 123
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 124
    check-cast v0, Lcom/alexmiller/map_launcher/MapModel;

    .line 87
    invoke-virtual {v0}, Lcom/alexmiller/map_launcher/MapModel;->toMap()Ljava/util/Map;

    move-result-object v0

    .line 124
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 125
    :cond_1
    check-cast p1, Ljava/util/List;

    .line 87
    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 84
    :sswitch_1
    const-string v1, "showDirections"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :sswitch_2
    const-string v1, "showMarker"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 90
    :cond_2
    iget-object p1, p1, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/Map;

    .line 92
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alexmiller/map_launcher/MapLauncherPlugin;->isMapAvailable(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 93
    const-string p0, "Map is not installed on a device"

    const/4 p1, 0x0

    const-string v0, "MAP_NOT_AVAILABLE"

    invoke-interface {p2, v0, p0, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 97
    :cond_3
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/alexmiller/map_launcher/MapType;->valueOf(Ljava/lang/String;)Lcom/alexmiller/map_launcher/MapType;

    move-result-object v0

    .line 98
    const-string/jumbo v1, "url"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/String;

    .line 100
    invoke-direct {p0, v0, p1, p2}, Lcom/alexmiller/map_launcher/MapLauncherPlugin;->launchMap(Lcom/alexmiller/map_launcher/MapType;Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_2

    .line 84
    :sswitch_3
    const-string v1, "isMapAvailable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    .line 103
    :cond_4
    iget-object p1, p1, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/Map;

    .line 104
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/alexmiller/map_launcher/MapLauncherPlugin;->isMapAvailable(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p2, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_2

    .line 106
    :cond_5
    :goto_1
    invoke-interface {p2}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V

    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x5040c0e9 -> :sswitch_3
        0x23646997 -> :sswitch_2
        0x6c64c7b1 -> :sswitch_1
        0x7783217b -> :sswitch_0
    .end sparse-switch
.end method
