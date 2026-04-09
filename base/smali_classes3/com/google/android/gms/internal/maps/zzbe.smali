.class final Lcom/google/android/gms/internal/maps/zzbe;
.super Lcom/google/android/gms/internal/maps/zzba;
.source "com.google.android.gms:play-services-maps@@18.2.0"


# instance fields
.field final transient zza:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/maps/zzba;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/maps/zzbe;->zza:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/maps/zzbe;->zza:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/maps/zzbe;->zza:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/maps/zzbb;

    iget-object p0, p0, Lcom/google/android/gms/internal/maps/zzbe;->zza:Ljava/lang/Object;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/maps/zzbb;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final size()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/maps/zzbe;->zza:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method final zza([Ljava/lang/Object;I)I
    .locals 0

    const/4 p2, 0x0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/maps/zzbe;->zza:Ljava/lang/Object;

    aput-object p0, p1, p2

    const/4 p0, 0x1

    return p0
.end method

.method public final zzd()Lcom/google/android/gms/internal/maps/zzbf;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/maps/zzbb;

    iget-object p0, p0, Lcom/google/android/gms/internal/maps/zzbe;->zza:Ljava/lang/Object;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/maps/zzbb;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
