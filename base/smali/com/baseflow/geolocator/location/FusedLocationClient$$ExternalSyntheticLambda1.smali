.class public final synthetic Lcom/baseflow/geolocator/location/FusedLocationClient$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field public final synthetic f$0:Lcom/baseflow/geolocator/location/FusedLocationClient;


# direct methods
.method public synthetic constructor <init>(Lcom/baseflow/geolocator/location/FusedLocationClient;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baseflow/geolocator/location/FusedLocationClient$$ExternalSyntheticLambda1;->f$0:Lcom/baseflow/geolocator/location/FusedLocationClient;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/baseflow/geolocator/location/FusedLocationClient$$ExternalSyntheticLambda1;->f$0:Lcom/baseflow/geolocator/location/FusedLocationClient;

    check-cast p1, Lcom/google/android/gms/location/LocationSettingsResponse;

    invoke-static {p0, p1}, Lcom/baseflow/geolocator/location/FusedLocationClient;->$r8$lambda$RVLn8oGE8geuThBw2CKmekdU95Q(Lcom/baseflow/geolocator/location/FusedLocationClient;Lcom/google/android/gms/location/LocationSettingsResponse;)V

    return-void
.end method
