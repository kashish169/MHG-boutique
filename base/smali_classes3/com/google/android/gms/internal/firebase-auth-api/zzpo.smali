.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzpo;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzqq;
.source "com.google.firebase:firebase-auth@@22.3.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/firebase-auth-api/zzpo$zzb;,
        Lcom/google/android/gms/internal/firebase-auth-api/zzpo$zza;
    }
.end annotation


# instance fields
.field private final zza:I

.field private final zzb:I

.field private final zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzpo$zzb;


# direct methods
.method private constructor <init>(IILcom/google/android/gms/internal/firebase-auth-api/zzpo$zzb;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzqq;-><init>()V

    .line 25
    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzpo;->zza:I

    .line 26
    iput p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzpo;->zzb:I

    .line 27
    iput-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzpo;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzpo$zzb;

    return-void
.end method

.method synthetic constructor <init>(IILcom/google/android/gms/internal/firebase-auth-api/zzpo$zzb;Lcom/google/android/gms/internal/firebase-auth-api/zzpr;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzpo;-><init>(IILcom/google/android/gms/internal/firebase-auth-api/zzpo$zzb;)V

    return-void
.end method

.method public static zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzpo$zza;
    .locals 2

    .line 21
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzpo$zza;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzpo$zza;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzpq;)V

    return-object v0
.end method

.method private final zzf()I
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzpo;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzpo$zzb;

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzpo$zzb;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzpo$zzb;

    if-ne v0, v1, :cond_0

    .line 5
    iget p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzpo;->zzb:I

    return p0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzpo;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzpo$zzb;

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzpo$zzb;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzpo$zzb;

    if-ne v0, v1, :cond_1

    .line 9
    iget p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzpo;->zzb:I

    :goto_0
    add-int/lit8 p0, p0, 0x5

    return p0

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzpo;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzpo$zzb;

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzpo$zzb;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzpo$zzb;

    if-ne v0, v1, :cond_2

    .line 13
    iget p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzpo;->zzb:I

    goto :goto_0

    .line 15
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzpo;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzpo$zzb;

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzpo$zzb;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzpo$zzb;

    if-ne v0, v1, :cond_3

    .line 17
    iget p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzpo;->zzb:I

    goto :goto_0

    .line 19
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Unknown variant"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 29
    instance-of v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzpo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 31
    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzpo;

    .line 33
    iget v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzpo;->zza:I

    .line 35
    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzpo;->zza:I

    if-ne v0, v2, :cond_1

    .line 37
    invoke-direct {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzpo;->zzf()I

    move-result v0

    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzpo;->zzf()I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 38
    iget-object p1, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzpo;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzpo$zzb;

    .line 40
    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzpo;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzpo$zzb;

    if-ne p1, p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 3

    .line 20
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzpo;->zza:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzpo;->zzb:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzpo;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzpo$zzb;

    const-class v2, Lcom/google/android/gms/internal/firebase-auth-api/zzpo;

    filled-new-array {v2, v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzpo;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzpo$zzb;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzpo;->zzb:I

    iget p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzpo;->zza:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AES-CMAC Parameters (variant: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "-byte tags, and "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "-byte key)"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final zza()Z
    .locals 1

    .line 43
    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzpo;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzpo$zzb;

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzpo$zzb;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzpo$zzb;

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
    iget p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzpo;->zzb:I

    return p0
.end method

.method public final zzc()I
    .locals 0

    .line 2
    iget p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzpo;->zza:I

    return p0
.end method

.method public final zze()Lcom/google/android/gms/internal/firebase-auth-api/zzpo$zzb;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzpo;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzpo$zzb;

    return-object p0
.end method
