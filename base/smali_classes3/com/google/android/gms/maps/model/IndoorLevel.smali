.class public final Lcom/google/android/gms/maps/model/IndoorLevel;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-maps@@18.2.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/maps/zzx;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/maps/zzx;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/maps/zzx;

    iput-object p1, p0, Lcom/google/android/gms/maps/model/IndoorLevel;->zza:Lcom/google/android/gms/internal/maps/zzx;

    return-void
.end method


# virtual methods
.method public activate()V
    .locals 1

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/google/android/gms/maps/model/IndoorLevel;->zza:Lcom/google/android/gms/internal/maps/zzx;

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/maps/zzx;->zzg()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 2
    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/maps/model/IndoorLevel;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/google/android/gms/maps/model/IndoorLevel;->zza:Lcom/google/android/gms/internal/maps/zzx;

    check-cast p1, Lcom/google/android/gms/maps/model/IndoorLevel;

    iget-object p1, p1, Lcom/google/android/gms/maps/model/IndoorLevel;->zza:Lcom/google/android/gms/internal/maps/zzx;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/maps/zzx;->zzh(Lcom/google/android/gms/internal/maps/zzx;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    .line 2
    invoke-direct {p1, p0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/google/android/gms/maps/model/IndoorLevel;->zza:Lcom/google/android/gms/internal/maps/zzx;

    invoke-interface {p0}, Lcom/google/android/gms/internal/maps/zzx;->zze()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    .line 2
    invoke-direct {v0, p0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public getShortName()Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/google/android/gms/maps/model/IndoorLevel;->zza:Lcom/google/android/gms/internal/maps/zzx;

    invoke-interface {p0}, Lcom/google/android/gms/internal/maps/zzx;->zzf()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    .line 2
    invoke-direct {v0, p0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/google/android/gms/maps/model/IndoorLevel;->zza:Lcom/google/android/gms/internal/maps/zzx;

    invoke-interface {p0}, Lcom/google/android/gms/internal/maps/zzx;->zzd()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    .line 2
    invoke-direct {v0, p0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method
