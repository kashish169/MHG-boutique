.class final Lcom/google/android/gms/internal/firebase-auth-api/zzn;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzo;
.source "com.google.firebase:firebase-auth@@22.3.0"


# static fields
.field static final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzn;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzn;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzj;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 6
    const-string v0, "CharMatcher.none()"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzo;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/CharSequence;I)I
    .locals 0

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p0

    .line 3
    const-string p1, "index"

    invoke-static {p2, p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzy;->zza(IILjava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method public final zza(C)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
