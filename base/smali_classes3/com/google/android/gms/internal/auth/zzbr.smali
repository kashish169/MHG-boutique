.class final Lcom/google/android/gms/internal/auth/zzbr;
.super Lcom/google/android/gms/internal/auth/zzbd;
.source "com.google.android.gms:play-services-auth-base@@18.0.10"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/auth/zzbs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/auth/zzbs;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/auth/zzbr;->zza:Lcom/google/android/gms/internal/auth/zzbs;

    invoke-direct {p0}, Lcom/google/android/gms/internal/auth/zzbd;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzc(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/auth/zzbr;->zza:Lcom/google/android/gms/internal/auth/zzbs;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/auth/zzbv;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/auth/zzbv;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/auth/zzbs;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void

    .line 2
    :cond_0
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0xbbe

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    new-instance v0, Lcom/google/android/gms/internal/auth/zzbv;

    .line 3
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/auth/zzbv;-><init>(Lcom/google/android/gms/common/api/Status;)V

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/auth/zzbs;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
