.class public final Lcom/google/android/gms/internal/measurement/zzfc$zze;
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
    name = "zze"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/zzfc$zze$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzix<",
        "Lcom/google/android/gms/internal/measurement/zzfc$zze;",
        "Lcom/google/android/gms/internal/measurement/zzfc$zze$zza;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzkl;"
    }
.end annotation


# static fields
.field private static final zzc:Lcom/google/android/gms/internal/measurement/zzfc$zze;

.field private static volatile zzd:Lcom/google/android/gms/internal/measurement/zzkw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzkw<",
            "Lcom/google/android/gms/internal/measurement/zzfc$zze;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zze:I

.field private zzf:I

.field private zzg:I

.field private zzh:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzfc$zze;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzfc$zze;-><init>()V

    .line 22
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzfc$zze;->zzc:Lcom/google/android/gms/internal/measurement/zzfc$zze;

    .line 23
    const-class v1, Lcom/google/android/gms/internal/measurement/zzfc$zze;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzix;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzix;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzix;-><init>()V

    const/16 v0, 0xe

    .line 26
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzfc$zze;->zzf:I

    const/16 v0, 0xb

    .line 27
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzfc$zze;->zzg:I

    const/16 v0, 0x3c

    .line 28
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzfc$zze;->zzh:I

    return-void
.end method

.method static synthetic zza()Lcom/google/android/gms/internal/measurement/zzfc$zze;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfc$zze;->zzc:Lcom/google/android/gms/internal/measurement/zzfc$zze;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

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
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzfc$zze;->zzd:Lcom/google/android/gms/internal/measurement/zzkw;

    if-nez p0, :cond_1

    .line 11
    const-class p1, Lcom/google/android/gms/internal/measurement/zzfc$zze;

    monitor-enter p1

    .line 12
    :try_start_0
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzfc$zze;->zzd:Lcom/google/android/gms/internal/measurement/zzkw;

    if-nez p0, :cond_0

    .line 14
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzix$zza;

    sget-object p2, Lcom/google/android/gms/internal/measurement/zzfc$zze;->zzc:Lcom/google/android/gms/internal/measurement/zzfc$zze;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/zzix$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzix;)V

    .line 15
    sput-object p0, Lcom/google/android/gms/internal/measurement/zzfc$zze;->zzd:Lcom/google/android/gms/internal/measurement/zzkw;

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
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzfc$zze;->zzc:Lcom/google/android/gms/internal/measurement/zzfc$zze;

    return-object p0

    .line 5
    :pswitch_4
    const-string p0, "zze"

    const-string p1, "zzf"

    const-string p2, "zzg"

    const-string p3, "zzh"

    filled-new-array {p0, p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p0

    .line 6
    const-string p1, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u1004\u0000\u0002\u1004\u0001\u0003\u1004\u0002"

    .line 7
    sget-object p2, Lcom/google/android/gms/internal/measurement/zzfc$zze;->zzc:Lcom/google/android/gms/internal/measurement/zzfc$zze;

    invoke-static {p2, p1, p0}, Lcom/google/android/gms/internal/measurement/zzfc$zze;->zza(Lcom/google/android/gms/internal/measurement/zzkj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 4
    :pswitch_5
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzfc$zze$zza;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzfc$zze$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzfb;)V

    return-object p0

    .line 3
    :pswitch_6
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzfc$zze;

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzfc$zze;-><init>()V

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
