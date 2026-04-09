.class public Lcom/baseflow/geolocator/location/NmeaClient;
.super Ljava/lang/Object;
.source "NmeaClient.java"


# static fields
.field public static final NMEA_ALTITUDE_EXTRA:Ljava/lang/String; = "geolocator_mslAltitude"


# instance fields
.field private final context:Landroid/content/Context;

.field private lastNmeaMessage:Ljava/lang/String;

.field private lastNmeaMessageTime:Ljava/util/Calendar;

.field private listenerAdded:Z

.field private final locationManager:Landroid/location/LocationManager;

.field private final locationOptions:Lcom/baseflow/geolocator/location/LocationOptions;

.field private nmeaMessageListener:Landroid/location/OnNmeaMessageListener;


# direct methods
.method public static synthetic $r8$lambda$-PbFqS-e4Dt9jrjJTnSilf8Mxso(Lcom/baseflow/geolocator/location/NmeaClient;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/baseflow/geolocator/location/NmeaClient;->lambda$new$0(Ljava/lang/String;J)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/baseflow/geolocator/location/LocationOptions;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/baseflow/geolocator/location/NmeaClient;->listenerAdded:Z

    .line 33
    iput-object p1, p0, Lcom/baseflow/geolocator/location/NmeaClient;->context:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lcom/baseflow/geolocator/location/NmeaClient;->locationOptions:Lcom/baseflow/geolocator/location/LocationOptions;

    .line 35
    const-string p2, "location"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    iput-object p1, p0, Lcom/baseflow/geolocator/location/NmeaClient;->locationManager:Landroid/location/LocationManager;

    .line 38
    new-instance p1, Lcom/baseflow/geolocator/location/NmeaClient$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/baseflow/geolocator/location/NmeaClient$$ExternalSyntheticLambda0;-><init>(Lcom/baseflow/geolocator/location/NmeaClient;)V

    iput-object p1, p0, Lcom/baseflow/geolocator/location/NmeaClient;->nmeaMessageListener:Landroid/location/OnNmeaMessageListener;

    return-void
.end method

.method private synthetic lambda$new$0(Ljava/lang/String;J)V
    .locals 0

    .line 40
    const-string p2, "$GPGGA"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 41
    iput-object p1, p0, Lcom/baseflow/geolocator/location/NmeaClient;->lastNmeaMessage:Ljava/lang/String;

    .line 42
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/baseflow/geolocator/location/NmeaClient;->lastNmeaMessageTime:Ljava/util/Calendar;

    :cond_0
    return-void
.end method


# virtual methods
.method public enrichExtrasWithNmea(Landroid/location/Location;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/baseflow/geolocator/location/NmeaClient;->lastNmeaMessage:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/baseflow/geolocator/location/NmeaClient;->locationOptions:Lcom/baseflow/geolocator/location/LocationOptions;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/baseflow/geolocator/location/NmeaClient;->listenerAdded:Z

    if-eqz v0, :cond_3

    .line 79
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xd

    const/4 v2, -0x5

    .line 80
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 81
    iget-object v1, p0, Lcom/baseflow/geolocator/location/NmeaClient;->lastNmeaMessageTime:Ljava/util/Calendar;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/baseflow/geolocator/location/NmeaClient;->locationOptions:Lcom/baseflow/geolocator/location/LocationOptions;

    invoke-virtual {v0}, Lcom/baseflow/geolocator/location/LocationOptions;->isUseMSLAltitude()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 87
    iget-object p0, p0, Lcom/baseflow/geolocator/location/NmeaClient;->lastNmeaMessage:Ljava/lang/String;

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 88
    aget-object v0, p0, v0

    .line 92
    const-string v1, "$GPGGA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    array-length v0, p0

    const/16 v1, 0x9

    if-le v0, v1, :cond_3

    .line 93
    aget-object v0, p0, v1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 94
    aget-object p0, p0, v1

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 95
    invoke-virtual {p1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_2

    .line 96
    sget-object p0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {p1, p0}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    .line 98
    :cond_2
    invoke-virtual {p1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "geolocator_mslAltitude"

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    :cond_3
    return-void
.end method

.method public start()V
    .locals 3

    .line 50
    iget-boolean v0, p0, Lcom/baseflow/geolocator/location/NmeaClient;->listenerAdded:Z

    if-eqz v0, :cond_0

    return-void

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/baseflow/geolocator/location/NmeaClient;->locationOptions:Lcom/baseflow/geolocator/location/LocationOptions;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/baseflow/geolocator/location/LocationOptions;->isUseMSLAltitude()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    iget-object v0, p0, Lcom/baseflow/geolocator/location/NmeaClient;->locationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_1

    .line 56
    iget-object v1, p0, Lcom/baseflow/geolocator/location/NmeaClient;->nmeaMessageListener:Landroid/location/OnNmeaMessageListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/location/LocationManager;->addNmeaListener(Landroid/location/OnNmeaMessageListener;Landroid/os/Handler;)Z

    const/4 v0, 0x1

    .line 57
    iput-boolean v0, p0, Lcom/baseflow/geolocator/location/NmeaClient;->listenerAdded:Z

    :cond_1
    return-void
.end method

.method public stop()V
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/baseflow/geolocator/location/NmeaClient;->locationOptions:Lcom/baseflow/geolocator/location/LocationOptions;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/baseflow/geolocator/location/LocationOptions;->isUseMSLAltitude()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/baseflow/geolocator/location/NmeaClient;->locationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 65
    iget-object v1, p0, Lcom/baseflow/geolocator/location/NmeaClient;->nmeaMessageListener:Landroid/location/OnNmeaMessageListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeNmeaListener(Landroid/location/OnNmeaMessageListener;)V

    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lcom/baseflow/geolocator/location/NmeaClient;->listenerAdded:Z

    :cond_0
    return-void
.end method
