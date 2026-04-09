.class final Lcom/google/android/gms/internal/firebase-auth-api/zzax;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzap;
.source "com.google.firebase:firebase-auth@@22.3.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzap<",
        "TE;>;"
    }
.end annotation


# static fields
.field static final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-auth-api/zzap<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final transient zzb:[Ljava/lang/Object;

.field private final transient zzc:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 8
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzax;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzax;-><init>([Ljava/lang/Object;I)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzax;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzap;

    return-void
.end method

.method constructor <init>([Ljava/lang/Object;I)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzap;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzax;->zzb:[Ljava/lang/Object;

    .line 11
    iput p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzax;->zzc:I

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 6
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzax;->zzc:I

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzy;->zza(II)I

    .line 7
    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzax;->zzb:[Ljava/lang/Object;

    aget-object p0, p0, p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public final size()I
    .locals 0

    .line 5
    iget p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzax;->zzc:I

    return p0
.end method

.method final zza()I
    .locals 0

    .line 3
    iget p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzax;->zzc:I

    return p0
.end method

.method final zza([Ljava/lang/Object;I)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzax;->zzb:[Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzax;->zzc:I

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2
    iget p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzax;->zzc:I

    add-int/2addr p2, p0

    return p2
.end method

.method final zzb()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method final zze()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method final zzf()[Ljava/lang/Object;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzax;->zzb:[Ljava/lang/Object;

    return-object p0
.end method
