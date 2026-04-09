.class public Lcom/google/android/gms/maps/model/MarkerOptions;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-maps@@18.2.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/maps/model/MarkerOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zza:Lcom/google/android/gms/maps/model/LatLng;

.field private zzb:Ljava/lang/String;

.field private zzc:Ljava/lang/String;

.field private zzd:Lcom/google/android/gms/maps/model/BitmapDescriptor;

.field private zze:F

.field private zzf:F

.field private zzg:Z

.field private zzh:Z

.field private zzi:Z

.field private zzj:F

.field private zzk:F

.field private zzl:F

.field private zzm:F

.field private zzn:F

.field private zzo:I
    .annotation runtime Lcom/google/android/gms/maps/model/AdvancedMarkerOptions$CollisionBehavior;
    .end annotation
.end field

.field private zzp:Landroid/view/View;

.field private zzq:I

.field private zzr:Ljava/lang/String;

.field private zzs:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/maps/model/zzl;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/zzl;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/model/MarkerOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zze:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzf:F

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzh:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzi:Z

    const/4 v3, 0x0

    iput v3, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzj:F

    iput v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzk:F

    iput v3, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzl:F

    iput v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzm:F

    iput v2, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzo:I

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/maps/model/LatLng;Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;FFZZZFFFFFILandroid/os/IBinder;ILjava/lang/String;F)V
    .locals 5

    move-object v0, p0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, v0, Lcom/google/android/gms/maps/model/MarkerOptions;->zze:F

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzf:F

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzh:Z

    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzi:Z

    const/4 v4, 0x0

    iput v4, v0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzj:F

    iput v1, v0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzk:F

    iput v4, v0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzl:F

    iput v2, v0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzm:F

    iput v3, v0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzo:I

    move-object v1, p1

    iput-object v1, v0, Lcom/google/android/gms/maps/model/MarkerOptions;->zza:Lcom/google/android/gms/maps/model/LatLng;

    move-object v1, p2

    iput-object v1, v0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzb:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzc:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez p4, :cond_0

    iput-object v1, v0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzd:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    goto :goto_0

    .line 5
    :cond_0
    new-instance v2, Lcom/google/android/gms/maps/model/BitmapDescriptor;

    .line 3
    invoke-static {p4}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/gms/maps/model/BitmapDescriptor;-><init>(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    iput-object v2, v0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzd:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    :goto_0
    move v2, p5

    .line 2
    iput v2, v0, Lcom/google/android/gms/maps/model/MarkerOptions;->zze:F

    move v2, p6

    iput v2, v0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzf:F

    move v2, p7

    iput-boolean v2, v0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzg:Z

    move v2, p8

    iput-boolean v2, v0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzh:Z

    move v2, p9

    iput-boolean v2, v0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzi:Z

    move v2, p10

    iput v2, v0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzj:F

    move/from16 v2, p11

    iput v2, v0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzk:F

    move/from16 v2, p12

    iput v2, v0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzl:F

    move/from16 v2, p13

    iput v2, v0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzm:F

    move/from16 v2, p14

    iput v2, v0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzn:F

    move/from16 v2, p17

    iput v2, v0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzq:I

    move/from16 v2, p15

    iput v2, v0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzo:I

    .line 4
    invoke-static/range {p16 .. p16}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    invoke-static {v2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 4
    :goto_1
    iput-object v1, v0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzp:Landroid/view/View;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzr:Ljava/lang/String;

    move/from16 v1, p19

    iput v1, v0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzs:F

    return-void
.end method


# virtual methods
.method public alpha(F)Lcom/google/android/gms/maps/model/MarkerOptions;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzm:F

    return-object p0
.end method

.method public anchor(FF)Lcom/google/android/gms/maps/model/MarkerOptions;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zze:F

    iput p2, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzf:F

    return-object p0
.end method

.method public contentDescription(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzr:Ljava/lang/String;

    return-object p0
.end method

.method public draggable(Z)Lcom/google/android/gms/maps/model/MarkerOptions;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzg:Z

    return-object p0
.end method

.method public flat(Z)Lcom/google/android/gms/maps/model/MarkerOptions;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzi:Z

    return-object p0
.end method

.method public getAlpha()F
    .locals 0

    iget p0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzm:F

    return p0
.end method

.method public getAnchorU()F
    .locals 0

    iget p0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zze:F

    return p0
.end method

.method public getAnchorV()F
    .locals 0

    iget p0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzf:F

    return p0
.end method

.method public getIcon()Lcom/google/android/gms/maps/model/BitmapDescriptor;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzd:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    return-object p0
.end method

.method public getInfoWindowAnchorU()F
    .locals 0

    iget p0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzk:F

    return p0
.end method

.method public getInfoWindowAnchorV()F
    .locals 0

    iget p0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzl:F

    return p0
.end method

.method public getPosition()Lcom/google/android/gms/maps/model/LatLng;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zza:Lcom/google/android/gms/maps/model/LatLng;

    return-object p0
.end method

.method public getRotation()F
    .locals 0

    iget p0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzj:F

    return p0
.end method

.method public getSnippet()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzc:Ljava/lang/String;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzb:Ljava/lang/String;

    return-object p0
.end method

.method public getZIndex()F
    .locals 0

    iget p0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzn:F

    return p0
.end method

.method public icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzd:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    return-object p0
.end method

.method public infoWindowAnchor(FF)Lcom/google/android/gms/maps/model/MarkerOptions;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzk:F

    iput p2, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzl:F

    return-object p0
.end method

.method public isDraggable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzg:Z

    return p0
.end method

.method public isFlat()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzi:Z

    return p0
.end method

.method public isVisible()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzh:Z

    return p0
.end method

.method public position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zza:Lcom/google/android/gms/maps/model/LatLng;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "latlng cannot be null - a position is required."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public rotation(F)Lcom/google/android/gms/maps/model/MarkerOptions;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzj:F

    return-object p0
.end method

.method public snippet(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzc:Ljava/lang/String;

    return-object p0
.end method

.method public title(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzb:Ljava/lang/String;

    return-object p0
.end method

.method public visible(Z)Lcom/google/android/gms/maps/model/MarkerOptions;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzh:Z

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/MarkerOptions;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 3
    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 p2, 0x3

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/MarkerOptions;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {p1, p2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 p2, 0x4

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/MarkerOptions;->getSnippet()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-static {p1, p2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object p2, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzd:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/maps/model/BitmapDescriptor;->zza()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p2

    .line 8
    invoke-interface {p2}, Lcom/google/android/gms/dynamic/IObjectWrapper;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    :goto_0
    const/4 v1, 0x5

    .line 9
    invoke-static {p1, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIBinder(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 p2, 0x6

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/MarkerOptions;->getAnchorU()F

    move-result v1

    .line 11
    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeFloat(Landroid/os/Parcel;IF)V

    const/4 p2, 0x7

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/MarkerOptions;->getAnchorV()F

    move-result v1

    .line 13
    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeFloat(Landroid/os/Parcel;IF)V

    const/16 p2, 0x8

    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/MarkerOptions;->isDraggable()Z

    move-result v1

    .line 15
    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    const/16 p2, 0x9

    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/MarkerOptions;->isVisible()Z

    move-result v1

    .line 17
    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    const/16 p2, 0xa

    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/MarkerOptions;->isFlat()Z

    move-result v1

    .line 19
    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    const/16 p2, 0xb

    .line 20
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/MarkerOptions;->getRotation()F

    move-result v1

    .line 21
    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeFloat(Landroid/os/Parcel;IF)V

    const/16 p2, 0xc

    .line 22
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/MarkerOptions;->getInfoWindowAnchorU()F

    move-result v1

    .line 23
    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeFloat(Landroid/os/Parcel;IF)V

    const/16 p2, 0xd

    .line 24
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/MarkerOptions;->getInfoWindowAnchorV()F

    move-result v1

    .line 25
    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeFloat(Landroid/os/Parcel;IF)V

    const/16 p2, 0xe

    .line 26
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/MarkerOptions;->getAlpha()F

    move-result v1

    .line 27
    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeFloat(Landroid/os/Parcel;IF)V

    const/16 p2, 0xf

    .line 28
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/MarkerOptions;->getZIndex()F

    move-result v1

    .line 29
    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeFloat(Landroid/os/Parcel;IF)V

    const/16 p2, 0x11

    iget v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzo:I

    .line 30
    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    iget-object p2, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzp:Landroid/view/View;

    .line 31
    invoke-static {p2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p2

    invoke-interface {p2}, Lcom/google/android/gms/dynamic/IObjectWrapper;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    const/16 v1, 0x12

    .line 32
    invoke-static {p1, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIBinder(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/16 p2, 0x13

    iget v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzq:I

    .line 33
    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    const/16 p2, 0x14

    iget-object v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzr:Ljava/lang/String;

    .line 34
    invoke-static {p1, p2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 p2, 0x15

    iget p0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzs:F

    .line 35
    invoke-static {p1, p2, p0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeFloat(Landroid/os/Parcel;IF)V

    .line 36
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method

.method public zIndex(F)Lcom/google/android/gms/maps/model/MarkerOptions;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzn:F

    return-object p0
.end method

.method public final zza()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzo:I

    return p0
.end method

.method public final zzb()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzq:I

    return p0
.end method

.method public final zzc()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzp:Landroid/view/View;

    return-object p0
.end method

.method public final zzd(I)Lcom/google/android/gms/maps/model/MarkerOptions;
    .locals 0
    .param p1    # I
        .annotation runtime Lcom/google/android/gms/maps/model/AdvancedMarkerOptions$CollisionBehavior;
        .end annotation
    .end param

    iput p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzo:I

    return-object p0
.end method

.method public final zze(Landroid/view/View;)Lcom/google/android/gms/maps/model/MarkerOptions;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzp:Landroid/view/View;

    return-object p0
.end method

.method public final zzf(I)Lcom/google/android/gms/maps/model/MarkerOptions;
    .locals 0

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzq:I

    return-object p0
.end method
