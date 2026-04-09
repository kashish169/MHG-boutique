.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzdl;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzdb;
.source "com.google.firebase:firebase-auth@@22.3.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zzc;,
        Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zzb;,
        Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zza;
    }
.end annotation


# instance fields
.field private final zza:I

.field private final zzb:I

.field private final zzc:I

.field private final zzd:I

.field private final zze:Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zzc;

.field private final zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zzb;


# direct methods
.method private constructor <init>(IIIILcom/google/android/gms/internal/firebase-auth-api/zzdl$zzc;Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zzb;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzdb;-><init>()V

    .line 16
    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdl;->zza:I

    .line 17
    iput p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdl;->zzb:I

    .line 18
    iput p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdl;->zzc:I

    .line 19
    iput p4, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdl;->zzd:I

    .line 20
    iput-object p5, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdl;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zzc;

    .line 21
    iput-object p6, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdl;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zzb;

    return-void
.end method

.method synthetic constructor <init>(IIIILcom/google/android/gms/internal/firebase-auth-api/zzdl$zzc;Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zzb;Lcom/google/android/gms/internal/firebase-auth-api/zzdn;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/google/android/gms/internal/firebase-auth-api/zzdl;-><init>(IIIILcom/google/android/gms/internal/firebase-auth-api/zzdl$zzc;Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zzb;)V

    return-void
.end method

.method public static zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zza;
    .locals 2

    .line 11
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zza;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zza;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzdm;)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 23
    instance-of v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzdl;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 25
    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzdl;

    .line 27
    iget v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzdl;->zza:I

    .line 29
    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdl;->zza:I

    if-ne v0, v2, :cond_1

    .line 31
    iget v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzdl;->zzb:I

    .line 33
    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdl;->zzb:I

    if-ne v0, v2, :cond_1

    .line 35
    iget v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzdl;->zzc:I

    .line 37
    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdl;->zzc:I

    if-ne v0, v2, :cond_1

    .line 39
    iget v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzdl;->zzd:I

    .line 41
    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdl;->zzd:I

    if-ne v0, v2, :cond_1

    .line 43
    iget-object v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzdl;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zzc;

    .line 45
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdl;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zzc;

    if-ne v0, v2, :cond_1

    .line 47
    iget-object p1, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzdl;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zzb;

    .line 49
    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdl;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zzb;

    if-ne p1, p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 8

    .line 5
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdl;->zza:I

    .line 6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdl;->zzb:I

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdl;->zzc:I

    .line 8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdl;->zzd:I

    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdl;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zzc;

    iget-object v7, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdl;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zzb;

    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/zzdl;

    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    move-result-object p0

    .line 10
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdl;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zzc;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdl;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zzb;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdl;->zzc:I

    iget v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdl;->zzd:I

    iget v4, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdl;->zza:I

    iget p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdl;->zzb:I

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "AesCtrHmacAead Parameters (variant: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", hashType: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "-byte IV, and "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "-byte tags, and "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "-byte AES key, and "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "-byte HMAC key)"

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final zza()Z
    .locals 1

    .line 52
    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdl;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zzc;

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zzc;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zzc;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zzb()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdl;->zza:I

    return p0
.end method

.method public final zzc()I
    .locals 0

    .line 2
    iget p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdl;->zzb:I

    return p0
.end method

.method public final zzd()I
    .locals 0

    .line 3
    iget p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdl;->zzc:I

    return p0
.end method

.method public final zze()I
    .locals 0

    .line 4
    iget p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdl;->zzd:I

    return p0
.end method

.method public final zzg()Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zzb;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdl;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zzb;

    return-object p0
.end method

.method public final zzh()Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zzc;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdl;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zzc;

    return-object p0
.end method
