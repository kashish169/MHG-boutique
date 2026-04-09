.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzes;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzdb;
.source "com.google.firebase:firebase-auth@@22.3.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/firebase-auth-api/zzes$zzb;,
        Lcom/google/android/gms/internal/firebase-auth-api/zzes$zza;
    }
.end annotation


# instance fields
.field private final zza:I

.field private final zzb:I

.field private final zzc:I

.field private final zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzes$zzb;


# direct methods
.method private constructor <init>(IIILcom/google/android/gms/internal/firebase-auth-api/zzes$zzb;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzdb;-><init>()V

    .line 9
    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzes;->zza:I

    .line 10
    iput p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzes;->zzb:I

    .line 11
    iput p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzes;->zzc:I

    .line 12
    iput-object p4, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzes;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzes$zzb;

    return-void
.end method

.method synthetic constructor <init>(IIILcom/google/android/gms/internal/firebase-auth-api/zzes$zzb;Lcom/google/android/gms/internal/firebase-auth-api/zzev;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/firebase-auth-api/zzes;-><init>(IIILcom/google/android/gms/internal/firebase-auth-api/zzes$zzb;)V

    return-void
.end method

.method public static zze()Lcom/google/android/gms/internal/firebase-auth-api/zzes$zza;
    .locals 2

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzes$zza;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzes$zza;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzeu;)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 14
    instance-of v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzes;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 16
    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzes;

    .line 18
    iget v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzes;->zza:I

    .line 20
    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzes;->zza:I

    if-ne v0, v2, :cond_1

    .line 22
    iget v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzes;->zzb:I

    .line 24
    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzes;->zzb:I

    if-ne v0, v2, :cond_1

    .line 26
    iget v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzes;->zzc:I

    .line 28
    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzes;->zzc:I

    if-ne v0, v2, :cond_1

    .line 30
    iget-object p1, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzes;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzes$zzb;

    .line 32
    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzes;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzes$zzb;

    if-ne p1, p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 4

    .line 4
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzes;->zza:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzes;->zzb:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzes;->zzc:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzes;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzes$zzb;

    const-class v3, Lcom/google/android/gms/internal/firebase-auth-api/zzes;

    filled-new-array {v3, v0, v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzes;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzes$zzb;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzes;->zzb:I

    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzes;->zzc:I

    iget p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzes;->zza:I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "AesGcm Parameters (variant: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "-byte IV, "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "-byte tag, and "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "-byte key)"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final zza()Z
    .locals 1

    .line 35
    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzes;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzes$zzb;

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzes$zzb;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzes$zzb;

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
    iget p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzes;->zzb:I

    return p0
.end method

.method public final zzc()I
    .locals 0

    .line 2
    iget p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzes;->zza:I

    return p0
.end method

.method public final zzd()I
    .locals 0

    .line 3
    iget p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzes;->zzc:I

    return p0
.end method

.method public final zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzes$zzb;
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzes;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzes$zzb;

    return-object p0
.end method
