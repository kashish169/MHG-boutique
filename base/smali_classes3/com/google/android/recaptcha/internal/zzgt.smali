.class Lcom/google/android/recaptcha/internal/zzgt;
.super Lcom/google/android/recaptcha/internal/zzgs;
.source "com.google.android.recaptcha:recaptcha@@18.4.0"


# instance fields
.field protected final zza:[B


# direct methods
.method constructor <init>([B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/recaptcha/internal/zzgs;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/recaptcha/internal/zzgt;->zza:[B

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/android/recaptcha/internal/zzgw;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/recaptcha/internal/zzgt;->zzd()I

    move-result v1

    move-object v3, p1

    check-cast v3, Lcom/google/android/recaptcha/internal/zzgw;

    invoke-virtual {v3}, Lcom/google/android/recaptcha/internal/zzgw;->zzd()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/recaptcha/internal/zzgt;->zzd()I

    move-result v1

    if-nez v1, :cond_3

    return v0

    :cond_3
    instance-of v1, p1, Lcom/google/android/recaptcha/internal/zzgt;

    if-eqz v1, :cond_b

    .line 2
    check-cast p1, Lcom/google/android/recaptcha/internal/zzgt;

    invoke-virtual {p0}, Lcom/google/android/recaptcha/internal/zzgw;->zzl()I

    move-result v1

    .line 3
    invoke-virtual {p1}, Lcom/google/android/recaptcha/internal/zzgw;->zzl()I

    move-result v3

    if-eqz v1, :cond_5

    if-eqz v3, :cond_5

    if-ne v1, v3, :cond_4

    goto :goto_0

    :cond_4
    return v2

    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/recaptcha/internal/zzgt;->zzd()I

    move-result v1

    .line 4
    invoke-virtual {p1}, Lcom/google/android/recaptcha/internal/zzgw;->zzd()I

    move-result v3

    if-gt v1, v3, :cond_a

    .line 6
    invoke-virtual {p1}, Lcom/google/android/recaptcha/internal/zzgw;->zzd()I

    move-result v3

    if-gt v1, v3, :cond_9

    .line 7
    instance-of v3, p1, Lcom/google/android/recaptcha/internal/zzgt;

    if-eqz v3, :cond_7

    iget-object p0, p0, Lcom/google/android/recaptcha/internal/zzgt;->zza:[B

    .line 8
    iget-object v3, p1, Lcom/google/android/recaptcha/internal/zzgt;->zza:[B

    .line 9
    invoke-virtual {p1}, Lcom/google/android/recaptcha/internal/zzgt;->zzc()I

    move p1, v2

    move v4, p1

    :goto_1
    if-ge p1, v1, :cond_8

    .line 10
    aget-byte v5, p0, p1

    aget-byte v6, v3, v4

    if-eq v5, v6, :cond_6

    move v0, v2

    goto :goto_2

    :cond_6
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 11
    :cond_7
    invoke-virtual {p1, v2, v1}, Lcom/google/android/recaptcha/internal/zzgw;->zzg(II)Lcom/google/android/recaptcha/internal/zzgw;

    move-result-object p1

    invoke-virtual {p0, v2, v1}, Lcom/google/android/recaptcha/internal/zzgt;->zzg(II)Lcom/google/android/recaptcha/internal/zzgw;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/recaptcha/internal/zzgw;->equals(Ljava/lang/Object;)Z

    move-result v0

    :cond_8
    :goto_2
    return v0

    .line 6
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/recaptcha/internal/zzgw;->zzd()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Ran off end of other: 0, "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lcom/google/android/recaptcha/internal/zzgt;->zzd()I

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Length too large: "

    .line 5
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_b
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public zza(I)B
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/recaptcha/internal/zzgt;->zza:[B

    aget-byte p0, p0, p1

    return p0
.end method

.method zzb(I)B
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/recaptcha/internal/zzgt;->zza:[B

    aget-byte p0, p0, p1

    return p0
.end method

.method protected zzc()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public zzd()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/recaptcha/internal/zzgt;->zza:[B

    array-length p0, p0

    return p0
.end method

.method protected zze([BIII)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/recaptcha/internal/zzgt;->zza:[B

    const/4 p2, 0x0

    invoke-static {p0, p2, p1, p2, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method protected final zzf(III)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/recaptcha/internal/zzgt;->zza:[B

    const/4 p2, 0x0

    invoke-static {p1, p0, p2, p3}, Lcom/google/android/recaptcha/internal/zzjc;->zzb(I[BII)I

    move-result p0

    return p0
.end method

.method public final zzg(II)Lcom/google/android/recaptcha/internal/zzgw;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/recaptcha/internal/zzgt;->zzd()I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p2, p1}, Lcom/google/android/recaptcha/internal/zzgt;->zzk(III)I

    move-result p1

    if-nez p1, :cond_0

    sget-object p0, Lcom/google/android/recaptcha/internal/zzgw;->zzb:Lcom/google/android/recaptcha/internal/zzgw;

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/google/android/recaptcha/internal/zzgt;->zza:[B

    new-instance p2, Lcom/google/android/recaptcha/internal/zzgq;

    .line 2
    invoke-direct {p2, p0, v0, p1}, Lcom/google/android/recaptcha/internal/zzgq;-><init>([BII)V

    return-object p2
.end method

.method protected final zzh(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/recaptcha/internal/zzgt;->zzd()I

    move-result v1

    iget-object p0, p0, Lcom/google/android/recaptcha/internal/zzgt;->zza:[B

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, v1, p1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0
.end method

.method final zzi(Lcom/google/android/recaptcha/internal/zzgm;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/recaptcha/internal/zzgt;->zzd()I

    move-result v0

    check-cast p1, Lcom/google/android/recaptcha/internal/zzhe;

    .line 1
    iget-object p0, p0, Lcom/google/android/recaptcha/internal/zzgt;->zza:[B

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v1, v0}, Lcom/google/android/recaptcha/internal/zzhe;->zzc([BII)V

    return-void
.end method

.method public final zzj()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/recaptcha/internal/zzgt;->zzd()I

    move-result v0

    iget-object p0, p0, Lcom/google/android/recaptcha/internal/zzgt;->zza:[B

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/google/android/recaptcha/internal/zzma;->zzf([BII)Z

    move-result p0

    return p0
.end method
