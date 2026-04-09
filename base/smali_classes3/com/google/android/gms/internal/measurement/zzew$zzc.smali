.class public final Lcom/google/android/gms/internal/measurement/zzew$zzc;
.super Lcom/google/android/gms/internal/measurement/zzix;
.source "com.google.android.gms:play-services-measurement@@21.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzkl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzew;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzc"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/zzew$zzc$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzix<",
        "Lcom/google/android/gms/internal/measurement/zzew$zzc;",
        "Lcom/google/android/gms/internal/measurement/zzew$zzc$zza;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzkl;"
    }
.end annotation


# static fields
.field private static final zzc:Lcom/google/android/gms/internal/measurement/zzew$zzc;

.field private static volatile zzd:Lcom/google/android/gms/internal/measurement/zzkw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzkw<",
            "Lcom/google/android/gms/internal/measurement/zzew$zzc;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zze:I

.field private zzf:Lcom/google/android/gms/internal/measurement/zzew$zzf;

.field private zzg:Lcom/google/android/gms/internal/measurement/zzew$zzd;

.field private zzh:Z

.field private zzi:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzew$zzc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzew$zzc;-><init>()V

    .line 26
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzew$zzc;->zzc:Lcom/google/android/gms/internal/measurement/zzew$zzc;

    .line 27
    const-class v1, Lcom/google/android/gms/internal/measurement/zzew$zzc;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzix;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzix;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzix;-><init>()V

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzew$zzc;->zzi:Ljava/lang/String;

    return-void
.end method

.method static synthetic zza()Lcom/google/android/gms/internal/measurement/zzew$zzc;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzew$zzc;->zzc:Lcom/google/android/gms/internal/measurement/zzew$zzc;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzew$zzc;Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzew$zzc;->zza(Ljava/lang/String;)V

    return-void
.end method

.method private final zza(Ljava/lang/String;)V
    .locals 1

    .line 33
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzew$zzc;->zze:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzew$zzc;->zze:I

    .line 35
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzew$zzc;->zzi:Ljava/lang/String;

    return-void
.end method

.method public static zzb()Lcom/google/android/gms/internal/measurement/zzew$zzc;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzew$zzc;->zzc:Lcom/google/android/gms/internal/measurement/zzew$zzc;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 5
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzev;->zza:[I

    const/4 p2, 0x1

    sub-int/2addr p1, p2

    aget p0, p0, p1

    const/4 p1, 0x0

    packed-switch p0, :pswitch_data_0

    .line 23
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_0
    return-object p1

    .line 21
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 12
    :pswitch_2
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzew$zzc;->zzd:Lcom/google/android/gms/internal/measurement/zzkw;

    if-nez p0, :cond_1

    .line 14
    const-class p1, Lcom/google/android/gms/internal/measurement/zzew$zzc;

    monitor-enter p1

    .line 15
    :try_start_0
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzew$zzc;->zzd:Lcom/google/android/gms/internal/measurement/zzkw;

    if-nez p0, :cond_0

    .line 17
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzix$zza;

    sget-object p2, Lcom/google/android/gms/internal/measurement/zzew$zzc;->zzc:Lcom/google/android/gms/internal/measurement/zzew$zzc;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/zzix$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzix;)V

    .line 18
    sput-object p0, Lcom/google/android/gms/internal/measurement/zzew$zzc;->zzd:Lcom/google/android/gms/internal/measurement/zzkw;

    .line 19
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

    .line 11
    :pswitch_3
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzew$zzc;->zzc:Lcom/google/android/gms/internal/measurement/zzew$zzc;

    return-object p0

    .line 8
    :pswitch_4
    const-string p0, "zze"

    const-string p1, "zzf"

    const-string p2, "zzg"

    const-string p3, "zzh"

    const-string v0, "zzi"

    filled-new-array {p0, p1, p2, p3, v0}, [Ljava/lang/Object;

    move-result-object p0

    .line 9
    const-string p1, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u1009\u0000\u0002\u1009\u0001\u0003\u1007\u0002\u0004\u1008\u0003"

    .line 10
    sget-object p2, Lcom/google/android/gms/internal/measurement/zzew$zzc;->zzc:Lcom/google/android/gms/internal/measurement/zzew$zzc;

    invoke-static {p2, p1, p0}, Lcom/google/android/gms/internal/measurement/zzew$zzc;->zza(Lcom/google/android/gms/internal/measurement/zzkj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 7
    :pswitch_5
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzew$zzc$zza;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzew$zzc$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzev;)V

    return-object p0

    .line 6
    :pswitch_6
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzew$zzc;

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzew$zzc;-><init>()V

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

.method public final zzc()Lcom/google/android/gms/internal/measurement/zzew$zzd;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzew$zzc;->zzg:Lcom/google/android/gms/internal/measurement/zzew$zzd;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzew$zzd;->zzc()Lcom/google/android/gms/internal/measurement/zzew$zzd;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final zzd()Lcom/google/android/gms/internal/measurement/zzew$zzf;
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzew$zzc;->zzf:Lcom/google/android/gms/internal/measurement/zzew$zzf;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzew$zzf;->zzd()Lcom/google/android/gms/internal/measurement/zzew$zzf;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final zze()Ljava/lang/String;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzew$zzc;->zzi:Ljava/lang/String;

    return-object p0
.end method

.method public final zzf()Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lcom/google/android/gms/internal/measurement/zzew$zzc;->zzh:Z

    return p0
.end method

.method public final zzg()Z
    .locals 0

    .line 38
    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzew$zzc;->zze:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zzh()Z
    .locals 0

    .line 39
    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzew$zzc;->zze:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zzi()Z
    .locals 0

    .line 40
    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzew$zzc;->zze:I

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zzj()Z
    .locals 1

    .line 41
    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzew$zzc;->zze:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
