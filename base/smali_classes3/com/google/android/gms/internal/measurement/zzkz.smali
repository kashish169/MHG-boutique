.class final Lcom/google/android/gms/internal/measurement/zzkz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@21.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzkh;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/measurement/zzkj;

.field private final zzb:Ljava/lang/String;

.field private final zzc:[Ljava/lang/Object;

.field private final zzd:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzkj;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkz;->zza:Lcom/google/android/gms/internal/measurement/zzkj;

    .line 10
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzkz;->zzb:Ljava/lang/String;

    .line 11
    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzkz;->zzc:[Ljava/lang/Object;

    const/4 p1, 0x0

    .line 13
    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const p3, 0xd800

    if-ge p1, p3, :cond_0

    .line 15
    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzkz;->zzd:I

    return-void

    :cond_0
    and-int/lit16 p1, p1, 0x1fff

    const/16 v0, 0xd

    const/4 v1, 0x1

    :goto_0
    add-int/lit8 v2, v1, 0x1

    .line 18
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-lt v1, p3, :cond_1

    and-int/lit16 v1, v1, 0x1fff

    shl-int/2addr v1, v0

    or-int/2addr p1, v1

    add-int/lit8 v0, v0, 0xd

    move v1, v2

    goto :goto_0

    :cond_1
    shl-int p2, v1, v0

    or-int/2addr p1, p2

    .line 21
    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzkz;->zzd:I

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/measurement/zzkj;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzkz;->zza:Lcom/google/android/gms/internal/measurement/zzkj;

    return-object p0
.end method

.method public final zzb()Lcom/google/android/gms/internal/measurement/zzky;
    .locals 1

    .line 2
    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzkz;->zzd:I

    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    .line 3
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzky;->zza:Lcom/google/android/gms/internal/measurement/zzky;

    return-object p0

    :cond_0
    const/4 v0, 0x4

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_1

    .line 5
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzky;->zzc:Lcom/google/android/gms/internal/measurement/zzky;

    return-object p0

    .line 6
    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzky;->zzb:Lcom/google/android/gms/internal/measurement/zzky;

    return-object p0
.end method

.method public final zzc()Z
    .locals 1

    .line 23
    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzkz;->zzd:I

    const/4 v0, 0x2

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method final zzd()Ljava/lang/String;
    .locals 0

    .line 7
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzkz;->zzb:Ljava/lang/String;

    return-object p0
.end method

.method final zze()[Ljava/lang/Object;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzkz;->zzc:[Ljava/lang/Object;

    return-object p0
.end method
