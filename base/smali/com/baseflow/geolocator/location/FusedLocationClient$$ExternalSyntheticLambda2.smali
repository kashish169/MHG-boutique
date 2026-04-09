.class public final synthetic Lcom/baseflow/geolocator/location/FusedLocationClient$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# instance fields
.field public final synthetic f$0:Lcom/baseflow/geolocator/location/FusedLocationClient;

.field public final synthetic f$1:Landroid/app/Activity;

.field public final synthetic f$2:Lcom/baseflow/geolocator/errors/ErrorCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/baseflow/geolocator/location/FusedLocationClient;Landroid/app/Activity;Lcom/baseflow/geolocator/errors/ErrorCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baseflow/geolocator/location/FusedLocationClient$$ExternalSyntheticLambda2;->f$0:Lcom/baseflow/geolocator/location/FusedLocationClient;

    iput-object p2, p0, Lcom/baseflow/geolocator/location/FusedLocationClient$$ExternalSyntheticLambda2;->f$1:Landroid/app/Activity;

    iput-object p3, p0, Lcom/baseflow/geolocator/location/FusedLocationClient$$ExternalSyntheticLambda2;->f$2:Lcom/baseflow/geolocator/errors/ErrorCallback;

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/baseflow/geolocator/location/FusedLocationClient$$ExternalSyntheticLambda2;->f$0:Lcom/baseflow/geolocator/location/FusedLocationClient;

    iget-object v1, p0, Lcom/baseflow/geolocator/location/FusedLocationClient$$ExternalSyntheticLambda2;->f$1:Landroid/app/Activity;

    iget-object p0, p0, Lcom/baseflow/geolocator/location/FusedLocationClient$$ExternalSyntheticLambda2;->f$2:Lcom/baseflow/geolocator/errors/ErrorCallback;

    invoke-static {v0, v1, p0, p1}, Lcom/baseflow/geolocator/location/FusedLocationClient;->$r8$lambda$dj_6D_a1tJb8ZcSl5xMAG3Ejh5I(Lcom/baseflow/geolocator/location/FusedLocationClient;Landroid/app/Activity;Lcom/baseflow/geolocator/errors/ErrorCallback;Ljava/lang/Exception;)V

    return-void
.end method
