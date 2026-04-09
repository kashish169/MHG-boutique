.class final Lcom/google/android/gms/internal/firebase-auth-api/zzaht;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzahz;
.source "com.google.firebase:firebase-auth@@22.3.0"


# instance fields
.field private final zzc:I

.field private final zzd:I


# direct methods
.method constructor <init>([BII)V
    .locals 1

    .line 10
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;-><init>([B)V

    add-int v0, p2, p3

    .line 11
    array-length p1, p1

    invoke-static {p2, v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zza(III)I

    .line 12
    iput p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzc:I

    .line 13
    iput p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzd:I

    return-void
.end method


# virtual methods
.method public final zza(I)B
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahp;->zzb()I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    sub-int v1, v0, v1

    or-int/2addr v1, p1

    if-gez v1, :cond_1

    if-gez p1, :cond_0

    .line 4
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Index < 0: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Index > length: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzb:[B

    iget p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzc:I

    add-int/2addr p0, p1

    aget-byte p0, v0, p0

    return p0
.end method

.method protected final zza([BIII)V
    .locals 0

    .line 15
    iget-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzb:[B

    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzh()I

    move-result p0

    const/4 p3, 0x0

    .line 17
    invoke-static {p2, p0, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method final zzb(I)B
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzb:[B

    iget p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzc:I

    add-int/2addr p0, p1

    aget-byte p0, v0, p0

    return p0
.end method

.method public final zzb()I
    .locals 0

    .line 9
    iget p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzd:I

    return p0
.end method

.method protected final zzh()I
    .locals 0

    .line 8
    iget p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzc:I

    return p0
.end method
