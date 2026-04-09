.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzsn;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzajc;
.source "com.google.firebase:firebase-auth@@22.3.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzakp;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/firebase-auth-api/zzsn$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase-auth-api/zzajc<",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzsn;",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzsn$zza;",
        ">;",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzakp;"
    }
.end annotation


# static fields
.field private static final zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzsn;

.field private static volatile zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzakw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-auth-api/zzakw<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzsn;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zze:I

.field private zzf:I

.field private zzg:Lcom/google/android/gms/internal/firebase-auth-api/zzsr;

.field private zzh:Lcom/google/android/gms/internal/firebase-auth-api/zzahp;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzsn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzsn;-><init>()V

    .line 27
    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzsn;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzsn;

    .line 28
    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/zzsn;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzajc;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/firebase-auth-api/zzajc;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzajc;-><init>()V

    .line 31
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzahp;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzahp;

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzsn;->zzh:Lcom/google/android/gms/internal/firebase-auth-api/zzahp;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/firebase-auth-api/zzahp;Lcom/google/android/gms/internal/firebase-auth-api/zzaio;)Lcom/google/android/gms/internal/firebase-auth-api/zzsn;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/firebase-auth-api/zzaji;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzsn;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzsn;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzajc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzajc;Lcom/google/android/gms/internal/firebase-auth-api/zzahp;Lcom/google/android/gms/internal/firebase-auth-api/zzaio;)Lcom/google/android/gms/internal/firebase-auth-api/zzajc;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/zzsn;

    return-object p0
.end method

.method private final zza(I)V
    .locals 0

    .line 43
    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzsn;->zzf:I

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzahp;)V
    .locals 0

    .line 36
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzsn;->zzh:Lcom/google/android/gms/internal/firebase-auth-api/zzahp;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase-auth-api/zzsn;I)V
    .locals 0

    const/4 p1, 0x0

    .line 33
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzsn;->zza(I)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase-auth-api/zzsn;Lcom/google/android/gms/internal/firebase-auth-api/zzahp;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzsn;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzahp;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase-auth-api/zzsn;Lcom/google/android/gms/internal/firebase-auth-api/zzsr;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzsn;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzsr;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzsr;)V
    .locals 0

    .line 39
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzsn;->zzg:Lcom/google/android/gms/internal/firebase-auth-api/zzsr;

    .line 41
    iget p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzsn;->zze:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzsn;->zze:I

    return-void
.end method

.method public static zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzsn$zza;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzsn;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzsn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzajc;->zzm()Lcom/google/android/gms/internal/firebase-auth-api/zzajc$zza;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzsn$zza;

    return-object v0
.end method

.method static synthetic zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzsn;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzsn;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzsn;

    return-object v0
.end method


# virtual methods
.method public final zza()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzsn;->zzf:I

    return p0
.end method

.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 7
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzso;->zza:[I

    const/4 p2, 0x1

    sub-int/2addr p1, p2

    aget p0, p0, p1

    const/4 p1, 0x0

    packed-switch p0, :pswitch_data_0

    .line 25
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_0
    return-object p1

    .line 23
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 14
    :pswitch_2
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzsn;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzakw;

    if-nez p0, :cond_1

    .line 16
    const-class p1, Lcom/google/android/gms/internal/firebase-auth-api/zzsn;

    monitor-enter p1

    .line 17
    :try_start_0
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzsn;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzakw;

    if-nez p0, :cond_0

    .line 19
    new-instance p0, Lcom/google/android/gms/internal/firebase-auth-api/zzajc$zzc;

    sget-object p2, Lcom/google/android/gms/internal/firebase-auth-api/zzsn;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzsn;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzajc$zzc;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzajc;)V

    .line 20
    sput-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzsn;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzakw;

    .line 21
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-object p0

    .line 13
    :pswitch_3
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzsn;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzsn;

    return-object p0

    .line 10
    :pswitch_4
    const-string p0, "zze"

    const-string p1, "zzf"

    const-string p2, "zzg"

    const-string p3, "zzh"

    filled-new-array {p0, p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p0

    .line 11
    const-string p1, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002\u1009\u0000\u0003\n"

    .line 12
    sget-object p2, Lcom/google/android/gms/internal/firebase-auth-api/zzsn;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzsn;

    invoke-static {p2, p1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzsn;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzakn;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 9
    :pswitch_5
    new-instance p0, Lcom/google/android/gms/internal/firebase-auth-api/zzsn$zza;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzsn$zza;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzso;)V

    return-object p0

    .line 8
    :pswitch_6
    new-instance p0, Lcom/google/android/gms/internal/firebase-auth-api/zzsn;

    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzsn;-><init>()V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzsr;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzsn;->zzg:Lcom/google/android/gms/internal/firebase-auth-api/zzsr;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzsr;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzsr;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final zze()Lcom/google/android/gms/internal/firebase-auth-api/zzahp;
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzsn;->zzh:Lcom/google/android/gms/internal/firebase-auth-api/zzahp;

    return-object p0
.end method
