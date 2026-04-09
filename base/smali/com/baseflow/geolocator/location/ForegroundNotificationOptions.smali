.class public Lcom/baseflow/geolocator/location/ForegroundNotificationOptions;
.super Ljava/lang/Object;
.source "ForegroundNotificationOptions.java"


# instance fields
.field private final color:Ljava/lang/Integer;

.field private final enableWakeLock:Z

.field private final enableWifiLock:Z

.field private final notificationIcon:Lcom/baseflow/geolocator/location/AndroidIconResource;

.field private final notificationText:Ljava/lang/String;

.field private final notificationTitle:Ljava/lang/String;

.field private final setOngoing:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/baseflow/geolocator/location/AndroidIconResource;ZZZLjava/lang/Integer;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/baseflow/geolocator/location/ForegroundNotificationOptions;->notificationTitle:Ljava/lang/String;

    .line 61
    iput-object p2, p0, Lcom/baseflow/geolocator/location/ForegroundNotificationOptions;->notificationText:Ljava/lang/String;

    .line 62
    iput-object p3, p0, Lcom/baseflow/geolocator/location/ForegroundNotificationOptions;->notificationIcon:Lcom/baseflow/geolocator/location/AndroidIconResource;

    .line 63
    iput-boolean p4, p0, Lcom/baseflow/geolocator/location/ForegroundNotificationOptions;->enableWifiLock:Z

    .line 64
    iput-boolean p5, p0, Lcom/baseflow/geolocator/location/ForegroundNotificationOptions;->enableWakeLock:Z

    .line 65
    iput-boolean p6, p0, Lcom/baseflow/geolocator/location/ForegroundNotificationOptions;->setOngoing:Z

    .line 66
    iput-object p7, p0, Lcom/baseflow/geolocator/location/ForegroundNotificationOptions;->color:Ljava/lang/Integer;

    return-void
.end method

.method public static parseArguments(Ljava/util/Map;)Lcom/baseflow/geolocator/location/ForegroundNotificationOptions;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/baseflow/geolocator/location/ForegroundNotificationOptions;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 29
    :cond_0
    const-string v1, "notificationIcon"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-static {v1}, Lcom/baseflow/geolocator/location/AndroidIconResource;->parseArguments(Ljava/util/Map;)Lcom/baseflow/geolocator/location/AndroidIconResource;

    move-result-object v5

    .line 30
    const-string v1, "notificationTitle"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    .line 31
    const-string v1, "notificationText"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    .line 32
    const-string v1, "enableWifiLock"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 33
    const-string v2, "enableWakeLock"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 34
    const-string v6, "setOngoing"

    invoke-interface {p0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    .line 37
    const-string v7, "color"

    invoke-interface {p0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 39
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_1
    move-object v9, v0

    .line 42
    new-instance p0, Lcom/baseflow/geolocator/location/ForegroundNotificationOptions;

    .line 46
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 47
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 48
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    move-object v2, p0

    move v6, v0

    invoke-direct/range {v2 .. v9}, Lcom/baseflow/geolocator/location/ForegroundNotificationOptions;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/baseflow/geolocator/location/AndroidIconResource;ZZZLjava/lang/Integer;)V

    return-object p0
.end method


# virtual methods
.method public getColor()Ljava/lang/Integer;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/baseflow/geolocator/location/ForegroundNotificationOptions;->color:Ljava/lang/Integer;

    return-object p0
.end method

.method public getNotificationIcon()Lcom/baseflow/geolocator/location/AndroidIconResource;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/baseflow/geolocator/location/ForegroundNotificationOptions;->notificationIcon:Lcom/baseflow/geolocator/location/AndroidIconResource;

    return-object p0
.end method

.method public getNotificationText()Ljava/lang/String;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/baseflow/geolocator/location/ForegroundNotificationOptions;->notificationText:Ljava/lang/String;

    return-object p0
.end method

.method public getNotificationTitle()Ljava/lang/String;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/baseflow/geolocator/location/ForegroundNotificationOptions;->notificationTitle:Ljava/lang/String;

    return-object p0
.end method

.method public isEnableWakeLock()Z
    .locals 0

    .line 89
    iget-boolean p0, p0, Lcom/baseflow/geolocator/location/ForegroundNotificationOptions;->enableWakeLock:Z

    return p0
.end method

.method public isEnableWifiLock()Z
    .locals 0

    .line 85
    iget-boolean p0, p0, Lcom/baseflow/geolocator/location/ForegroundNotificationOptions;->enableWifiLock:Z

    return p0
.end method

.method public isSetOngoing()Z
    .locals 0

    .line 93
    iget-boolean p0, p0, Lcom/baseflow/geolocator/location/ForegroundNotificationOptions;->setOngoing:Z

    return p0
.end method
