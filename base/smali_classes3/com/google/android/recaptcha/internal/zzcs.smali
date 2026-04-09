.class public final Lcom/google/android/recaptcha/internal/zzcs;
.super Ljava/lang/Object;
.source "com.google.android.recaptcha:recaptcha@@18.4.0"

# interfaces
.implements Lcom/google/android/recaptcha/internal/zzdd;


# static fields
.field public static final zza:Lcom/google/android/recaptcha/internal/zzcs;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/recaptcha/internal/zzcs;

    invoke-direct {v0}, Lcom/google/android/recaptcha/internal/zzcs;-><init>()V

    sput-object v0, Lcom/google/android/recaptcha/internal/zzcs;->zza:Lcom/google/android/recaptcha/internal/zzcs;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs zza(ILcom/google/android/recaptcha/internal/zzcj;[Lcom/google/android/recaptcha/internal/zzpq;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/recaptcha/internal/zzae;
        }
    .end annotation

    .line 1
    array-length p0, p3

    const/4 v0, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p0, v2, :cond_6

    .line 3
    invoke-virtual {p2}, Lcom/google/android/recaptcha/internal/zzcj;->zzc()Lcom/google/android/recaptcha/internal/zzck;

    move-result-object p0

    const/4 v3, 0x0

    .line 4
    aget-object p3, p3, v3

    .line 5
    invoke-virtual {p0, p3}, Lcom/google/android/recaptcha/internal/zzck;->zza(Lcom/google/android/recaptcha/internal/zzpq;)Ljava/lang/Object;

    move-result-object p0

    instance-of p3, p0, Ljava/lang/Object;

    if-eq v2, p3, :cond_0

    move-object p0, v1

    :cond_0
    if-eqz p0, :cond_5

    const/16 p3, 0x8

    const/4 v0, 0x6

    .line 6
    :try_start_0
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 7
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p2}, Lcom/google/android/recaptcha/internal/zzcj;->zzh()Lcom/google/android/recaptcha/internal/zzag;

    move-result-object v1

    .line 8
    invoke-virtual {v1, p0}, Lcom/google/android/recaptcha/internal/zzag;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_1
    invoke-virtual {p2}, Lcom/google/android/recaptcha/internal/zzcj;->zzc()Lcom/google/android/recaptcha/internal/zzck;

    move-result-object p2
    :try_end_0
    .catch Lcom/google/android/recaptcha/internal/zzae; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 9
    :try_start_1
    invoke-static {p0}, Lcom/google/android/recaptcha/internal/zzci;->zza(Ljava/lang/Object;)Ljava/lang/Class;
    :try_end_1
    .catch Lcom/google/android/recaptcha/internal/zzae; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move-exception p0

    .line 12
    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/recaptcha/internal/zzae;->zzb()I

    move-result v1

    if-eq v1, p3, :cond_4

    invoke-virtual {p0}, Lcom/google/android/recaptcha/internal/zzae;->zzb()I

    move-result v1

    if-ne v1, v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/recaptcha/internal/zzae;->zzb()I

    move-result v1

    const/16 v3, 0x2f

    if-ne v1, v3, :cond_3

    goto :goto_1

    .line 10
    :cond_3
    throw p0

    :cond_4
    :goto_0
    move v2, v3

    .line 11
    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Lcom/google/android/recaptcha/internal/zzck;->zzf(ILjava/lang/Object;)V
    :try_end_2
    .catch Lcom/google/android/recaptcha/internal/zzae; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception p0

    .line 13
    new-instance p1, Lcom/google/android/recaptcha/internal/zzae;

    .line 12
    invoke-direct {p1, v0, p3, p0}, Lcom/google/android/recaptcha/internal/zzae;-><init>(IILjava/lang/Throwable;)V

    throw p1

    :catch_2
    move-exception p0

    .line 13
    throw p0

    .line 11
    :cond_5
    new-instance p0, Lcom/google/android/recaptcha/internal/zzae;

    const/4 p1, 0x5

    .line 14
    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/recaptcha/internal/zzae;-><init>(IILjava/lang/Throwable;)V

    .line 15
    throw p0

    .line 1
    :cond_6
    new-instance p0, Lcom/google/android/recaptcha/internal/zzae;

    const/4 p1, 0x3

    .line 2
    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/recaptcha/internal/zzae;-><init>(IILjava/lang/Throwable;)V

    .line 3
    throw p0
.end method
