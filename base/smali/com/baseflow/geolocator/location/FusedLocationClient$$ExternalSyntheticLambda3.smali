.class public final synthetic Lcom/baseflow/geolocator/location/FusedLocationClient$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field public final synthetic f$0:Lcom/baseflow/geolocator/location/PositionChangedCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/baseflow/geolocator/location/PositionChangedCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baseflow/geolocator/location/FusedLocationClient$$ExternalSyntheticLambda3;->f$0:Lcom/baseflow/geolocator/location/PositionChangedCallback;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/baseflow/geolocator/location/FusedLocationClient$$ExternalSyntheticLambda3;->f$0:Lcom/baseflow/geolocator/location/PositionChangedCallback;

    check-cast p1, Landroid/location/Location;

    invoke-interface {p0, p1}, Lcom/baseflow/geolocator/location/PositionChangedCallback;->onPositionChanged(Landroid/location/Location;)V

    return-void
.end method
