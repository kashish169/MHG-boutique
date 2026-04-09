.class final Lcom/google/android/gms/internal/auth/zzfh;
.super Lcom/google/android/gms/internal/auth/zzfl;
.source "com.google.android.gms:play-services-auth-base@@18.0.10"


# static fields
.field private static final zza:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/auth/zzfh;->zza:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/auth/zzfl;-><init>(Lcom/google/android/gms/internal/auth/zzfk;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/auth/zzfg;)V
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/auth/zzfl;-><init>(Lcom/google/android/gms/internal/auth/zzfk;)V

    return-void
.end method


# virtual methods
.method final zza(Ljava/lang/Object;J)V
    .locals 2

    .line 1
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/auth/zzhj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    instance-of v0, p0, Lcom/google/android/gms/internal/auth/zzff;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lcom/google/android/gms/internal/auth/zzff;

    invoke-interface {p0}, Lcom/google/android/gms/internal/auth/zzff;->zze()Lcom/google/android/gms/internal/auth/zzff;

    move-result-object p0

    goto :goto_0

    .line 5
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/auth/zzfh;->zza:Ljava/lang/Class;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    instance-of v0, p0, Lcom/google/android/gms/internal/auth/zzge;

    if-eqz v0, :cond_3

    instance-of v0, p0, Lcom/google/android/gms/internal/auth/zzez;

    if-eqz v0, :cond_3

    .line 6
    check-cast p0, Lcom/google/android/gms/internal/auth/zzez;

    invoke-interface {p0}, Lcom/google/android/gms/internal/auth/zzez;->zzc()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 7
    invoke-interface {p0}, Lcom/google/android/gms/internal/auth/zzez;->zzb()V

    :cond_2
    return-void

    .line 4
    :cond_3
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    .line 5
    :goto_0
    invoke-static {p1, p2, p3, p0}, Lcom/google/android/gms/internal/auth/zzhj;->zzp(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method final zzb(Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 3

    .line 1
    invoke-static {p2, p3, p4}, Lcom/google/android/gms/internal/auth/zzhj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    .line 3
    invoke-static {p1, p3, p4}, Lcom/google/android/gms/internal/auth/zzhj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    instance-of v1, v0, Lcom/google/android/gms/internal/auth/zzff;

    if-eqz v1, :cond_0

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/auth/zzfe;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/auth/zzfe;-><init>(I)V

    goto :goto_0

    .line 24
    :cond_0
    instance-of v1, v0, Lcom/google/android/gms/internal/auth/zzge;

    if-eqz v1, :cond_1

    instance-of v1, v0, Lcom/google/android/gms/internal/auth/zzez;

    if-eqz v1, :cond_1

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/auth/zzez;

    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/auth/zzez;->zzd(I)Lcom/google/android/gms/internal/auth/zzez;

    move-result-object p2

    move-object v0, p2

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    :goto_0
    invoke-static {p1, p3, p4, v0}, Lcom/google/android/gms/internal/auth/zzhj;->zzp(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_2

    .line 6
    :cond_2
    sget-object v1, Lcom/google/android/gms/internal/auth/zzfh;->zza:Ljava/lang/Class;

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    .line 10
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, p2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 11
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 12
    invoke-static {p1, p3, p4, v1}, Lcom/google/android/gms/internal/auth/zzhj;->zzp(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_1
    move-object v0, v1

    goto :goto_2

    :cond_3
    instance-of v1, v0, Lcom/google/android/gms/internal/auth/zzhe;

    if-eqz v1, :cond_4

    .line 13
    new-instance v1, Lcom/google/android/gms/internal/auth/zzfe;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, p2

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/auth/zzfe;-><init>(I)V

    .line 14
    check-cast v0, Lcom/google/android/gms/internal/auth/zzhe;

    .line 15
    invoke-virtual {v1}, Lcom/google/android/gms/internal/auth/zzfe;->size()I

    move-result p2

    invoke-virtual {v1, p2, v0}, Lcom/google/android/gms/internal/auth/zzdr;->addAll(ILjava/util/Collection;)Z

    .line 16
    invoke-static {p1, p3, p4, v1}, Lcom/google/android/gms/internal/auth/zzhj;->zzp(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_1

    :cond_4
    instance-of v1, v0, Lcom/google/android/gms/internal/auth/zzge;

    if-eqz v1, :cond_5

    instance-of v1, v0, Lcom/google/android/gms/internal/auth/zzez;

    if-eqz v1, :cond_5

    .line 17
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/auth/zzez;

    .line 18
    invoke-interface {v1}, Lcom/google/android/gms/internal/auth/zzez;->zzc()Z

    move-result v2

    if-nez v2, :cond_5

    .line 19
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, p2

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/auth/zzez;->zzd(I)Lcom/google/android/gms/internal/auth/zzez;

    move-result-object v0

    .line 20
    invoke-static {p1, p3, p4, v0}, Lcom/google/android/gms/internal/auth/zzhj;->zzp(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 21
    :cond_5
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    .line 22
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez p2, :cond_6

    if-lez v1, :cond_6

    .line 23
    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_6
    if-gtz p2, :cond_7

    goto :goto_3

    :cond_7
    move-object p0, v0

    .line 24
    :goto_3
    invoke-static {p1, p3, p4, p0}, Lcom/google/android/gms/internal/auth/zzhj;->zzp(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method
