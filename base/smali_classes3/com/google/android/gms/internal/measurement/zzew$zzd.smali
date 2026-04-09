.class public final Lcom/google/android/gms/internal/measurement/zzew$zzd;
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
    name = "zzd"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/zzew$zzd$zzb;,
        Lcom/google/android/gms/internal/measurement/zzew$zzd$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzix<",
        "Lcom/google/android/gms/internal/measurement/zzew$zzd;",
        "Lcom/google/android/gms/internal/measurement/zzew$zzd$zza;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzkl;"
    }
.end annotation


# static fields
.field private static final zzc:Lcom/google/android/gms/internal/measurement/zzew$zzd;

.field private static volatile zzd:Lcom/google/android/gms/internal/measurement/zzkw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzkw<",
            "Lcom/google/android/gms/internal/measurement/zzew$zzd;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zze:I

.field private zzf:I

.field private zzg:Z

.field private zzh:Ljava/lang/String;

.field private zzi:Ljava/lang/String;

.field private zzj:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzew$zzd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzew$zzd;-><init>()V

    .line 29
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzew$zzd;->zzc:Lcom/google/android/gms/internal/measurement/zzew$zzd;

    .line 30
    const-class v1, Lcom/google/android/gms/internal/measurement/zzew$zzd;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzix;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzix;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzix;-><init>()V

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzew$zzd;->zzh:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzew$zzd;->zzi:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzew$zzd;->zzj:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzb()Lcom/google/android/gms/internal/measurement/zzew$zzd;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzew$zzd;->zzc:Lcom/google/android/gms/internal/measurement/zzew$zzd;

    return-object v0
.end method

.method public static zzc()Lcom/google/android/gms/internal/measurement/zzew$zzd;
    .locals 1

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzew$zzd;->zzc:Lcom/google/android/gms/internal/measurement/zzew$zzd;

    return-object v0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/measurement/zzew$zzd$zzb;
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzew$zzd;->zzf:I

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzew$zzd$zzb;->zza(I)Lcom/google/android/gms/internal/measurement/zzew$zzd$zzb;

    move-result-object p0

    if-nez p0, :cond_0

    .line 2
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzew$zzd$zzb;->zza:Lcom/google/android/gms/internal/measurement/zzew$zzd$zzb;

    :cond_0
    return-object p0
.end method

.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 5
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzev;->zza:[I

    const/4 p2, 0x1

    sub-int/2addr p1, p2

    aget p0, p0, p1

    const/4 p1, 0x0

    packed-switch p0, :pswitch_data_0

    .line 24
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_0
    return-object p1

    .line 22
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 13
    :pswitch_2
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzew$zzd;->zzd:Lcom/google/android/gms/internal/measurement/zzkw;

    if-nez p0, :cond_1

    .line 15
    const-class p1, Lcom/google/android/gms/internal/measurement/zzew$zzd;

    monitor-enter p1

    .line 16
    :try_start_0
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzew$zzd;->zzd:Lcom/google/android/gms/internal/measurement/zzkw;

    if-nez p0, :cond_0

    .line 18
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzix$zza;

    sget-object p2, Lcom/google/android/gms/internal/measurement/zzew$zzd;->zzc:Lcom/google/android/gms/internal/measurement/zzew$zzd;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/zzix$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzix;)V

    .line 19
    sput-object p0, Lcom/google/android/gms/internal/measurement/zzew$zzd;->zzd:Lcom/google/android/gms/internal/measurement/zzkw;

    .line 20
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

    .line 12
    :pswitch_3
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzew$zzd;->zzc:Lcom/google/android/gms/internal/measurement/zzew$zzd;

    return-object p0

    .line 8
    :pswitch_4
    const-string v0, "zze"

    const-string v1, "zzf"

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzew$zzd$zzb;->zzb()Lcom/google/android/gms/internal/measurement/zzje;

    move-result-object v2

    const-string v3, "zzg"

    const-string v4, "zzh"

    const-string v5, "zzi"

    const-string v6, "zzj"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    move-result-object p0

    .line 10
    const-string p1, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001\u180c\u0000\u0002\u1007\u0001\u0003\u1008\u0002\u0004\u1008\u0003\u0005\u1008\u0004"

    .line 11
    sget-object p2, Lcom/google/android/gms/internal/measurement/zzew$zzd;->zzc:Lcom/google/android/gms/internal/measurement/zzew$zzd;

    invoke-static {p2, p1, p0}, Lcom/google/android/gms/internal/measurement/zzew$zzd;->zza(Lcom/google/android/gms/internal/measurement/zzkj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 7
    :pswitch_5
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzew$zzd$zza;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzew$zzd$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzev;)V

    return-object p0

    .line 6
    :pswitch_6
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzew$zzd;

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzew$zzd;-><init>()V

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

.method public final zzd()Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzew$zzd;->zzh:Ljava/lang/String;

    return-object p0
.end method

.method public final zze()Ljava/lang/String;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzew$zzd;->zzj:Ljava/lang/String;

    return-object p0
.end method

.method public final zzf()Ljava/lang/String;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzew$zzd;->zzi:Ljava/lang/String;

    return-object p0
.end method

.method public final zzg()Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lcom/google/android/gms/internal/measurement/zzew$zzd;->zzg:Z

    return p0
.end method

.method public final zzh()Z
    .locals 1

    .line 38
    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzew$zzd;->zze:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zzi()Z
    .locals 0

    .line 39
    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzew$zzd;->zze:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zzj()Z
    .locals 0

    .line 40
    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzew$zzd;->zze:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zzk()Z
    .locals 0

    .line 41
    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzew$zzd;->zze:I

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zzl()Z
    .locals 0

    .line 42
    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzew$zzd;->zze:I

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
