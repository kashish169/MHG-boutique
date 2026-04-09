.class final Lcom/google/android/gms/internal/firebase-auth-api/zzms;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.3.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzmq$zza;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/firebase-auth-api/zzop;

.field private final synthetic zzb:Lcom/google/android/gms/internal/firebase-auth-api/zznb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzop;Lcom/google/android/gms/internal/firebase-auth-api/zznb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 9
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzms;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzop;

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzms;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zznb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/firebase-auth-api/zzbs;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzbs<",
            "*>;"
        }
    .end annotation

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzoq;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzms;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzop;

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzms;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zznb;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zznb;->zzf()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzoq;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzop;Lcom/google/android/gms/internal/firebase-auth-api/zznb;Ljava/lang/Class;)V

    return-object v0
.end method

.method public final zza(Ljava/lang/Class;)Lcom/google/android/gms/internal/firebase-auth-api/zzbs;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Q:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TQ;>;)",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzbs<",
            "TQ;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzoq;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzms;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzop;

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzms;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zznb;

    invoke-direct {v0, v1, p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzoq;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzop;Lcom/google/android/gms/internal/firebase-auth-api/zznb;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 3
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "Primitive type not supported"

    invoke-direct {p1, v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final zzb()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 7
    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzms;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzop;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public final zzc()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 8
    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzms;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzop;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zznb;->zzh()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method
