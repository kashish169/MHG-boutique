.class final Lcom/google/android/gms/internal/firebase-auth-api/zzaho;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzahq;
.source "com.google.firebase:firebase-auth@@22.3.0"


# instance fields
.field private zza:I

.field private final zzb:I

.field private final synthetic zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzahp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzahp;)V
    .locals 1

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaho;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzahp;

    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahq;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaho;->zza:I

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahp;->zzb()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaho;->zzb:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .line 9
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaho;->zza:I

    iget p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaho;->zzb:I

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zza()B
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaho;->zza:I

    .line 2
    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaho;->zzb:I

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    .line 4
    iput v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaho;->zza:I

    .line 5
    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaho;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzahp;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahp;->zzb(I)B

    move-result p0

    return p0

    .line 3
    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method
