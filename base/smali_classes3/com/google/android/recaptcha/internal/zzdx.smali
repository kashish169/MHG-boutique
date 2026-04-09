.class public final Lcom/google/android/recaptcha/internal/zzdx;
.super Ljava/lang/Object;
.source "com.google.android.recaptcha:recaptcha@@18.4.0"

# interfaces
.implements Lcom/google/android/recaptcha/internal/zzdd;


# static fields
.field public static final zza:Lcom/google/android/recaptcha/internal/zzdx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/recaptcha/internal/zzdx;

    invoke-direct {v0}, Lcom/google/android/recaptcha/internal/zzdx;-><init>()V

    sput-object v0, Lcom/google/android/recaptcha/internal/zzdx;->zza:Lcom/google/android/recaptcha/internal/zzdx;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs zza(ILcom/google/android/recaptcha/internal/zzcj;[Lcom/google/android/recaptcha/internal/zzpq;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/recaptcha/internal/zzae;
        }
    .end annotation

    .line 1
    array-length p0, p3

    const/4 v0, 0x2

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-ne p0, v0, :cond_5

    invoke-virtual {p2}, Lcom/google/android/recaptcha/internal/zzcj;->zzc()Lcom/google/android/recaptcha/internal/zzck;

    move-result-object p0

    const/4 v0, 0x0

    .line 2
    aget-object v3, p3, v0

    .line 3
    invoke-virtual {p0, v3}, Lcom/google/android/recaptcha/internal/zzck;->zza(Lcom/google/android/recaptcha/internal/zzpq;)Ljava/lang/Object;

    move-result-object p0

    instance-of v3, p0, [I

    const/4 v4, 0x1

    if-eq v4, v3, :cond_0

    move-object p0, v2

    .line 2
    :cond_0
    check-cast p0, [I

    const/4 v3, 0x5

    if-eqz p0, :cond_4

    .line 5
    invoke-virtual {p2}, Lcom/google/android/recaptcha/internal/zzcj;->zzc()Lcom/google/android/recaptcha/internal/zzck;

    move-result-object v5

    .line 6
    aget-object p3, p3, v4

    .line 7
    invoke-virtual {v5, p3}, Lcom/google/android/recaptcha/internal/zzck;->zza(Lcom/google/android/recaptcha/internal/zzpq;)Ljava/lang/Object;

    move-result-object p3

    instance-of v5, p3, Ljava/lang/String;

    if-eq v4, v5, :cond_1

    move-object p3, v2

    .line 6
    :cond_1
    check-cast p3, Ljava/lang/String;

    if-eqz p3, :cond_3

    .line 9
    invoke-virtual {p2}, Lcom/google/android/recaptcha/internal/zzcj;->zzc()Lcom/google/android/recaptcha/internal/zzck;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    array-length v3, p0

    :goto_0
    if-ge v0, v3, :cond_2

    .line 11
    aget v4, p0, v0

    .line 12
    invoke-virtual {p3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 13
    invoke-virtual {p2, p1, p0}, Lcom/google/android/recaptcha/internal/zzck;->zzf(ILjava/lang/Object;)V

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lcom/google/android/recaptcha/internal/zzae;

    const/16 p2, 0x16

    .line 14
    invoke-direct {p1, v1, p2, p0}, Lcom/google/android/recaptcha/internal/zzae;-><init>(IILjava/lang/Throwable;)V

    throw p1

    .line 6
    :cond_3
    new-instance p0, Lcom/google/android/recaptcha/internal/zzae;

    .line 8
    invoke-direct {p0, v1, v3, v2}, Lcom/google/android/recaptcha/internal/zzae;-><init>(IILjava/lang/Throwable;)V

    .line 9
    throw p0

    .line 2
    :cond_4
    new-instance p0, Lcom/google/android/recaptcha/internal/zzae;

    .line 4
    invoke-direct {p0, v1, v3, v2}, Lcom/google/android/recaptcha/internal/zzae;-><init>(IILjava/lang/Throwable;)V

    .line 5
    throw p0

    .line 14
    :cond_5
    new-instance p0, Lcom/google/android/recaptcha/internal/zzae;

    const/4 p1, 0x3

    .line 15
    invoke-direct {p0, v1, p1, v2}, Lcom/google/android/recaptcha/internal/zzae;-><init>(IILjava/lang/Throwable;)V

    .line 16
    throw p0
.end method
