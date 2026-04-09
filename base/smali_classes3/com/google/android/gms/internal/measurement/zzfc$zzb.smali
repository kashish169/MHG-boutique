.class public final Lcom/google/android/gms/internal/measurement/zzfc$zzb;
.super Lcom/google/android/gms/internal/measurement/zzix;
.source "com.google.android.gms:play-services-measurement@@21.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzkl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzfc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/zzfc$zzb$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzix<",
        "Lcom/google/android/gms/internal/measurement/zzfc$zzb;",
        "Lcom/google/android/gms/internal/measurement/zzfc$zzb$zza;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzkl;"
    }
.end annotation


# static fields
.field private static final zzc:Lcom/google/android/gms/internal/measurement/zzfc$zzb;

.field private static volatile zzd:Lcom/google/android/gms/internal/measurement/zzkw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzkw<",
            "Lcom/google/android/gms/internal/measurement/zzfc$zzb;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zze:I

.field private zzf:Ljava/lang/String;

.field private zzg:Lcom/google/android/gms/internal/measurement/zzjf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzjf<",
            "Lcom/google/android/gms/internal/measurement/zzfc$zzf;",
            ">;"
        }
    .end annotation
.end field

.field private zzh:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzfc$zzb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzfc$zzb;-><init>()V

    .line 23
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzfc$zzb;->zzc:Lcom/google/android/gms/internal/measurement/zzfc$zzb;

    .line 24
    const-class v1, Lcom/google/android/gms/internal/measurement/zzfc$zzb;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzix;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzix;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzix;-><init>()V

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfc$zzb;->zzf:Ljava/lang/String;

    .line 28
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfc$zzb;->zzcc()Lcom/google/android/gms/internal/measurement/zzjf;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfc$zzb;->zzg:Lcom/google/android/gms/internal/measurement/zzjf;

    return-void
.end method

.method static synthetic zza()Lcom/google/android/gms/internal/measurement/zzfc$zzb;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfc$zzb;->zzc:Lcom/google/android/gms/internal/measurement/zzfc$zzb;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 2
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzfb;->zza:[I

    const/4 p2, 0x1

    sub-int/2addr p1, p2

    aget p0, p0, p1

    const/4 p1, 0x0

    packed-switch p0, :pswitch_data_0

    .line 20
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_0
    return-object p1

    .line 18
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 9
    :pswitch_2
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzfc$zzb;->zzd:Lcom/google/android/gms/internal/measurement/zzkw;

    if-nez p0, :cond_1

    .line 11
    const-class p1, Lcom/google/android/gms/internal/measurement/zzfc$zzb;

    monitor-enter p1

    .line 12
    :try_start_0
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzfc$zzb;->zzd:Lcom/google/android/gms/internal/measurement/zzkw;

    if-nez p0, :cond_0

    .line 14
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzix$zza;

    sget-object p2, Lcom/google/android/gms/internal/measurement/zzfc$zzb;->zzc:Lcom/google/android/gms/internal/measurement/zzfc$zzb;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/zzix$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzix;)V

    .line 15
    sput-object p0, Lcom/google/android/gms/internal/measurement/zzfc$zzb;->zzd:Lcom/google/android/gms/internal/measurement/zzkw;

    .line 16
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

    .line 8
    :pswitch_3
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzfc$zzb;->zzc:Lcom/google/android/gms/internal/measurement/zzfc$zzb;

    return-object p0

    .line 5
    :pswitch_4
    const-string p0, "zze"

    const-string p1, "zzf"

    const-string p2, "zzg"

    const-class p3, Lcom/google/android/gms/internal/measurement/zzfc$zzf;

    const-string v0, "zzh"

    filled-new-array {p0, p1, p2, p3, v0}, [Ljava/lang/Object;

    move-result-object p0

    .line 6
    const-string p1, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0001\u0000\u0001\u1008\u0000\u0002\u001b\u0003\u1007\u0001"

    .line 7
    sget-object p2, Lcom/google/android/gms/internal/measurement/zzfc$zzb;->zzc:Lcom/google/android/gms/internal/measurement/zzfc$zzb;

    invoke-static {p2, p1, p0}, Lcom/google/android/gms/internal/measurement/zzfc$zzb;->zza(Lcom/google/android/gms/internal/measurement/zzkj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 4
    :pswitch_5
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzfc$zzb$zza;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzfc$zzb$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzfb;)V

    return-object p0

    .line 3
    :pswitch_6
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzfc$zzb;

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzfc$zzb;-><init>()V

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

.method public final zzb()Ljava/lang/String;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzfc$zzb;->zzf:Ljava/lang/String;

    return-object p0
.end method
