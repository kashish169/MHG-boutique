.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzaga;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.3.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzacp;


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:J

.field private final zzc:Z

.field private final zzd:Ljava/lang/String;

.field private final zze:Ljava/lang/String;

.field private final zzf:Ljava/lang/String;

.field private final zzg:Ljava/lang/String;

.field private final zzh:Z

.field private zzi:Lcom/google/android/gms/internal/firebase-auth-api/zzaee;


# direct methods
.method public constructor <init>(Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaga;->zza:Ljava/lang/String;

    .line 17
    iput-wide p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaga;->zzb:J

    .line 18
    iput-boolean p4, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaga;->zzc:Z

    .line 19
    iput-object p5, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaga;->zzd:Ljava/lang/String;

    .line 20
    iput-object p6, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaga;->zze:Ljava/lang/String;

    .line 21
    iput-object p7, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaga;->zzf:Ljava/lang/String;

    .line 22
    iput-object p8, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaga;->zzg:Ljava/lang/String;

    .line 23
    iput-boolean p9, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaga;->zzh:Z

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 4
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 5
    const-string v1, "phoneNumber"

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaga;->zza:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaga;->zze:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 7
    const-string v2, "tenantId"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaga;->zzf:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 9
    const-string v2, "recaptchaToken"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 10
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaga;->zzi:Lcom/google/android/gms/internal/firebase-auth-api/zzaee;

    if-eqz v1, :cond_2

    .line 11
    const-string v2, "autoRetrievalInfo"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaee;->zza()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 12
    :cond_2
    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaga;->zzg:Ljava/lang/String;

    if-eqz p0, :cond_3

    .line 13
    const-string v1, "playIntegrityToken"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 14
    :cond_3
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzaee;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaga;->zzi:Lcom/google/android/gms/internal/firebase-auth-api/zzaee;

    return-void
.end method

.method public final zzb()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaga;->zzb:J

    return-wide v0
.end method

.method public final zzc()Ljava/lang/String;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaga;->zzd:Ljava/lang/String;

    return-object p0
.end method

.method public final zzd()Ljava/lang/String;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaga;->zza:Ljava/lang/String;

    return-object p0
.end method

.method public final zze()Z
    .locals 0

    .line 27
    iget-boolean p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaga;->zzc:Z

    return p0
.end method

.method public final zzf()Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaga;->zzh:Z

    return p0
.end method
