.class final Lcom/alexmiller/map_launcher/MapModel;
.super Ljava/lang/Object;
.source "MapLauncherPlugin.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\n\n\u0002\u0010$\n\u0000\u0008\u0002\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0008J\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0010R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\nR\u0011\u0010\u0007\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\n\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/alexmiller/map_launcher/MapModel;",
        "",
        "mapType",
        "Lcom/alexmiller/map_launcher/MapType;",
        "mapName",
        "",
        "packageName",
        "urlPrefix",
        "(Lcom/alexmiller/map_launcher/MapType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "getMapName",
        "()Ljava/lang/String;",
        "getMapType",
        "()Lcom/alexmiller/map_launcher/MapType;",
        "getPackageName",
        "getUrlPrefix",
        "toMap",
        "",
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
.field private final mapName:Ljava/lang/String;

.field private final mapType:Lcom/alexmiller/map_launcher/MapType;

.field private final packageName:Ljava/lang/String;

.field private final urlPrefix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alexmiller/map_launcher/MapType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "mapType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mapName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "urlPrefix"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alexmiller/map_launcher/MapModel;->mapType:Lcom/alexmiller/map_launcher/MapType;

    iput-object p2, p0, Lcom/alexmiller/map_launcher/MapModel;->mapName:Ljava/lang/String;

    iput-object p3, p0, Lcom/alexmiller/map_launcher/MapModel;->packageName:Ljava/lang/String;

    iput-object p4, p0, Lcom/alexmiller/map_launcher/MapModel;->urlPrefix:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getMapName()Ljava/lang/String;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/alexmiller/map_launcher/MapModel;->mapName:Ljava/lang/String;

    return-object p0
.end method

.method public final getMapType()Lcom/alexmiller/map_launcher/MapType;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/alexmiller/map_launcher/MapModel;->mapType:Lcom/alexmiller/map_launcher/MapType;

    return-object p0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/alexmiller/map_launcher/MapModel;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public final getUrlPrefix()Ljava/lang/String;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/alexmiller/map_launcher/MapModel;->urlPrefix:Ljava/lang/String;

    return-object p0
.end method

.method public final toMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x4

    .line 17
    new-array v0, v0, [Lkotlin/Pair;

    iget-object v1, p0, Lcom/alexmiller/map_launcher/MapModel;->mapType:Lcom/alexmiller/map_launcher/MapType;

    invoke-virtual {v1}, Lcom/alexmiller/map_launcher/MapType;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mapType"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "mapName"

    iget-object v2, p0, Lcom/alexmiller/map_launcher/MapModel;->mapName:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "packageName"

    iget-object v2, p0, Lcom/alexmiller/map_launcher/MapModel;->packageName:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "urlPrefix"

    iget-object p0, p0, Lcom/alexmiller/map_launcher/MapModel;->urlPrefix:Ljava/lang/String;

    invoke-static {v1, p0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    const/4 v1, 0x3

    aput-object p0, v0, v1

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
