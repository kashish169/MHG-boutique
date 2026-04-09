.class abstract Lcom/google/android/gms/measurement/internal/zze;
.super Lcom/google/android/gms/measurement/internal/zzf;
.source "com.google.android.gms:play-services-measurement-impl@@21.5.0"


# instance fields
.field private zza:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzhf;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzf;-><init>(Lcom/google/android/gms/measurement/internal/zzhf;)V

    .line 2
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zze;->zzu:Lcom/google/android/gms/measurement/internal/zzhf;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzaa()V

    return-void
.end method


# virtual methods
.method protected final zzu()V
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzy()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Not initialized"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final zzv()V
    .locals 1

    .line 7
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zze;->zza:Z

    if-nez v0, :cond_1

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzz()Z

    move-result v0

    if-nez v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zze;->zzu:Lcom/google/android/gms/measurement/internal/zzhf;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzz()V

    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zze;->zza:Z

    :cond_0
    return-void

    .line 8
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Can\'t initialize twice"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final zzw()V
    .locals 1

    .line 13
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zze;->zza:Z

    if-nez v0, :cond_0

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzx()V

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zze;->zzu:Lcom/google/android/gms/measurement/internal/zzhf;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzz()V

    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zze;->zza:Z

    return-void

    .line 14
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Can\'t initialize twice"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected zzx()V
    .locals 0

    return-void
.end method

.method final zzy()Z
    .locals 0

    .line 20
    iget-boolean p0, p0, Lcom/google/android/gms/measurement/internal/zze;->zza:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected abstract zzz()Z
.end method
