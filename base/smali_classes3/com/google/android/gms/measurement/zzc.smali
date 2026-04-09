.class final Lcom/google/android/gms/measurement/zzc;
.super Lcom/google/android/gms/measurement/AppMeasurement$zza;
.source "com.google.android.gms:play-services-measurement-impl@@21.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/measurement/internal/zzjz;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzjz;)V
    .locals 1

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/AppMeasurement$zza;-><init>(Lcom/google/android/gms/measurement/zzb;)V

    .line 17
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iput-object p1, p0, Lcom/google/android/gms/measurement/zzc;->zza:Lcom/google/android/gms/measurement/internal/zzjz;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/measurement/zzc;->zza:Lcom/google/android/gms/measurement/internal/zzjz;

    invoke-interface {p0, p1}, Lcom/google/android/gms/measurement/internal/zzjz;->zza(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final zza()J
    .locals 2

    .line 2
    iget-object p0, p0, Lcom/google/android/gms/measurement/zzc;->zza:Lcom/google/android/gms/measurement/internal/zzjz;

    invoke-interface {p0}, Lcom/google/android/gms/measurement/internal/zzjz;->zza()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zza(I)Ljava/lang/Object;
    .locals 0

    .line 7
    iget-object p0, p0, Lcom/google/android/gms/measurement/zzc;->zza:Lcom/google/android/gms/measurement/internal/zzjz;

    invoke-interface {p0, p1}, Lcom/google/android/gms/measurement/internal/zzjz;->zza(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 13
    iget-object p0, p0, Lcom/google/android/gms/measurement/zzc;->zza:Lcom/google/android/gms/measurement/internal/zzjz;

    invoke-interface {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzjz;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 15
    iget-object p0, p0, Lcom/google/android/gms/measurement/zzc;->zza:Lcom/google/android/gms/measurement/internal/zzjz;

    invoke-interface {p0, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzjz;->zza(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final zza(Z)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 14
    iget-object p0, p0, Lcom/google/android/gms/measurement/zzc;->zza:Lcom/google/android/gms/measurement/internal/zzjz;

    const/4 v0, 0x0

    invoke-interface {p0, v0, v0, p1}, Lcom/google/android/gms/measurement/internal/zzjz;->zza(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final zza(Landroid/os/Bundle;)V
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/google/android/gms/measurement/zzc;->zza:Lcom/google/android/gms/measurement/internal/zzjz;

    invoke-interface {p0, p1}, Lcom/google/android/gms/measurement/internal/zzjz;->zza(Landroid/os/Bundle;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzil;)V
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/google/android/gms/measurement/zzc;->zza:Lcom/google/android/gms/measurement/internal/zzjz;

    invoke-interface {p0, p1}, Lcom/google/android/gms/measurement/internal/zzjz;->zza(Lcom/google/android/gms/measurement/internal/zzil;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzim;)V
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/google/android/gms/measurement/zzc;->zza:Lcom/google/android/gms/measurement/internal/zzjz;

    invoke-interface {p0, p1}, Lcom/google/android/gms/measurement/internal/zzjz;->zza(Lcom/google/android/gms/measurement/internal/zzim;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/google/android/gms/measurement/zzc;->zza:Lcom/google/android/gms/measurement/internal/zzjz;

    invoke-interface {p0, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzjz;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V
    .locals 6

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/measurement/zzc;->zza:Lcom/google/android/gms/measurement/internal/zzjz;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzjz;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V

    return-void
.end method

.method public final zzb()Ljava/lang/Boolean;
    .locals 1

    .line 3
    iget-object p0, p0, Lcom/google/android/gms/measurement/zzc;->zza:Lcom/google/android/gms/measurement/internal/zzjz;

    const/4 v0, 0x4

    invoke-interface {p0, v0}, Lcom/google/android/gms/measurement/internal/zzjz;->zza(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/measurement/internal/zzil;)V
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/google/android/gms/measurement/zzc;->zza:Lcom/google/android/gms/measurement/internal/zzjz;

    invoke-interface {p0, p1}, Lcom/google/android/gms/measurement/internal/zzjz;->zzb(Lcom/google/android/gms/measurement/internal/zzil;)V

    return-void
.end method

.method public final zzb(Ljava/lang/String;)V
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/google/android/gms/measurement/zzc;->zza:Lcom/google/android/gms/measurement/internal/zzjz;

    invoke-interface {p0, p1}, Lcom/google/android/gms/measurement/internal/zzjz;->zzb(Ljava/lang/String;)V

    return-void
.end method

.method public final zzb(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/google/android/gms/measurement/zzc;->zza:Lcom/google/android/gms/measurement/internal/zzjz;

    invoke-interface {p0, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzjz;->zzb(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final zzc()Ljava/lang/Double;
    .locals 1

    .line 4
    iget-object p0, p0, Lcom/google/android/gms/measurement/zzc;->zza:Lcom/google/android/gms/measurement/internal/zzjz;

    const/4 v0, 0x2

    invoke-interface {p0, v0}, Lcom/google/android/gms/measurement/internal/zzjz;->zza(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    return-object p0
.end method

.method public final zzc(Ljava/lang/String;)V
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/google/android/gms/measurement/zzc;->zza:Lcom/google/android/gms/measurement/internal/zzjz;

    invoke-interface {p0, p1}, Lcom/google/android/gms/measurement/internal/zzjz;->zzc(Ljava/lang/String;)V

    return-void
.end method

.method public final zzd()Ljava/lang/Integer;
    .locals 1

    .line 5
    iget-object p0, p0, Lcom/google/android/gms/measurement/zzc;->zza:Lcom/google/android/gms/measurement/internal/zzjz;

    const/4 v0, 0x3

    invoke-interface {p0, v0}, Lcom/google/android/gms/measurement/internal/zzjz;->zza(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    return-object p0
.end method

.method public final zze()Ljava/lang/Long;
    .locals 1

    .line 6
    iget-object p0, p0, Lcom/google/android/gms/measurement/zzc;->zza:Lcom/google/android/gms/measurement/internal/zzjz;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/google/android/gms/measurement/internal/zzjz;->zza(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    return-object p0
.end method

.method public final zzf()Ljava/lang/String;
    .locals 0

    .line 8
    iget-object p0, p0, Lcom/google/android/gms/measurement/zzc;->zza:Lcom/google/android/gms/measurement/internal/zzjz;

    invoke-interface {p0}, Lcom/google/android/gms/measurement/internal/zzjz;->zzf()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final zzg()Ljava/lang/String;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/google/android/gms/measurement/zzc;->zza:Lcom/google/android/gms/measurement/internal/zzjz;

    invoke-interface {p0}, Lcom/google/android/gms/measurement/internal/zzjz;->zzg()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final zzh()Ljava/lang/String;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/google/android/gms/measurement/zzc;->zza:Lcom/google/android/gms/measurement/internal/zzjz;

    invoke-interface {p0}, Lcom/google/android/gms/measurement/internal/zzjz;->zzh()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final zzi()Ljava/lang/String;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/google/android/gms/measurement/zzc;->zza:Lcom/google/android/gms/measurement/internal/zzjz;

    invoke-interface {p0}, Lcom/google/android/gms/measurement/internal/zzjz;->zzi()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final zzj()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object p0, p0, Lcom/google/android/gms/measurement/zzc;->zza:Lcom/google/android/gms/measurement/internal/zzjz;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/google/android/gms/measurement/internal/zzjz;->zza(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method
