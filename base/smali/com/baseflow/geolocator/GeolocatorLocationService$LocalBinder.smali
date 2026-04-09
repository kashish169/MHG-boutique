.class Lcom/baseflow/geolocator/GeolocatorLocationService$LocalBinder;
.super Landroid/os/Binder;
.source "GeolocatorLocationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baseflow/geolocator/GeolocatorLocationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LocalBinder"
.end annotation


# instance fields
.field private final locationService:Lcom/baseflow/geolocator/GeolocatorLocationService;

.field final synthetic this$0:Lcom/baseflow/geolocator/GeolocatorLocationService;


# direct methods
.method constructor <init>(Lcom/baseflow/geolocator/GeolocatorLocationService;Lcom/baseflow/geolocator/GeolocatorLocationService;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/baseflow/geolocator/GeolocatorLocationService$LocalBinder;->this$0:Lcom/baseflow/geolocator/GeolocatorLocationService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 218
    iput-object p2, p0, Lcom/baseflow/geolocator/GeolocatorLocationService$LocalBinder;->locationService:Lcom/baseflow/geolocator/GeolocatorLocationService;

    return-void
.end method


# virtual methods
.method public getLocationService()Lcom/baseflow/geolocator/GeolocatorLocationService;
    .locals 0

    .line 222
    iget-object p0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService$LocalBinder;->locationService:Lcom/baseflow/geolocator/GeolocatorLocationService;

    return-object p0
.end method
