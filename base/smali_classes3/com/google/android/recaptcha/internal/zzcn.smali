.class public final Lcom/google/android/recaptcha/internal/zzcn;
.super Ljava/lang/Object;
.source "com.google.android.recaptcha:recaptcha@@18.4.0"

# interfaces
.implements Lcom/google/android/recaptcha/internal/zzdd;


# static fields
.field public static final zza:Lcom/google/android/recaptcha/internal/zzcn;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/recaptcha/internal/zzcn;

    invoke-direct {v0}, Lcom/google/android/recaptcha/internal/zzcn;-><init>()V

    sput-object v0, Lcom/google/android/recaptcha/internal/zzcn;->zza:Lcom/google/android/recaptcha/internal/zzcn;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs zza(ILcom/google/android/recaptcha/internal/zzcj;[Lcom/google/android/recaptcha/internal/zzpq;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/recaptcha/internal/zzae;
        }
    .end annotation

    .line 1
    array-length p0, p3

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ne p0, v0, :cond_7

    .line 3
    invoke-virtual {p2}, Lcom/google/android/recaptcha/internal/zzcj;->zzc()Lcom/google/android/recaptcha/internal/zzck;

    move-result-object p0

    const/4 v0, 0x0

    .line 4
    aget-object v0, p3, v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/google/android/recaptcha/internal/zzck;->zza(Lcom/google/android/recaptcha/internal/zzpq;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Ljava/lang/Object;

    const/4 v3, 0x1

    if-eq v3, v0, :cond_0

    move-object p0, v1

    :cond_0
    const/4 v0, 0x5

    if-eqz p0, :cond_6

    .line 7
    invoke-virtual {p2}, Lcom/google/android/recaptcha/internal/zzcj;->zzc()Lcom/google/android/recaptcha/internal/zzck;

    move-result-object v4

    .line 8
    aget-object p3, p3, v3

    .line 9
    invoke-virtual {v4, p3}, Lcom/google/android/recaptcha/internal/zzck;->zza(Lcom/google/android/recaptcha/internal/zzpq;)Ljava/lang/Object;

    move-result-object p3

    instance-of v4, p3, Ljava/lang/Integer;

    if-eq v3, v4, :cond_1

    move-object p3, v1

    :cond_1
    check-cast p3, Ljava/lang/Integer;

    if-eqz p3, :cond_5

    .line 8
    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    .line 12
    :try_start_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_2

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, p3}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 13
    :cond_2
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_3

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 14
    :cond_3
    invoke-static {p0, p3}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    .line 12
    :goto_0
    invoke-virtual {p2}, Lcom/google/android/recaptcha/internal/zzcj;->zzc()Lcom/google/android/recaptcha/internal/zzck;

    move-result-object p2

    .line 15
    invoke-virtual {p2, p1, p0}, Lcom/google/android/recaptcha/internal/zzck;->zzf(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 16
    instance-of p1, p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    if-eqz p1, :cond_4

    .line 18
    new-instance p1, Lcom/google/android/recaptcha/internal/zzae;

    const/16 p2, 0x16

    .line 17
    invoke-direct {p1, v2, p2, p0}, Lcom/google/android/recaptcha/internal/zzae;-><init>(IILjava/lang/Throwable;)V

    throw p1

    .line 14
    :cond_4
    new-instance p1, Lcom/google/android/recaptcha/internal/zzae;

    const/16 p2, 0x17

    .line 18
    invoke-direct {p1, v2, p2, p0}, Lcom/google/android/recaptcha/internal/zzae;-><init>(IILjava/lang/Throwable;)V

    throw p1

    .line 9
    :cond_5
    new-instance p0, Lcom/google/android/recaptcha/internal/zzae;

    .line 10
    invoke-direct {p0, v2, v0, v1}, Lcom/google/android/recaptcha/internal/zzae;-><init>(IILjava/lang/Throwable;)V

    .line 11
    throw p0

    .line 5
    :cond_6
    new-instance p0, Lcom/google/android/recaptcha/internal/zzae;

    .line 6
    invoke-direct {p0, v2, v0, v1}, Lcom/google/android/recaptcha/internal/zzae;-><init>(IILjava/lang/Throwable;)V

    .line 7
    throw p0

    .line 1
    :cond_7
    new-instance p0, Lcom/google/android/recaptcha/internal/zzae;

    const/4 p1, 0x3

    .line 2
    invoke-direct {p0, v2, p1, v1}, Lcom/google/android/recaptcha/internal/zzae;-><init>(IILjava/lang/Throwable;)V

    .line 3
    throw p0
.end method
