.class abstract Lcom/google/android/gms/measurement/internal/zzaw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@21.5.0"


# static fields
.field private static volatile zza:Landroid/os/Handler;


# instance fields
.field private final zzb:Lcom/google/android/gms/measurement/internal/zzif;

.field private final zzc:Ljava/lang/Runnable;

.field private volatile zzd:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzif;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzaw;->zzb:Lcom/google/android/gms/measurement/internal/zzif;

    .line 11
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzav;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/zzav;-><init>(Lcom/google/android/gms/measurement/internal/zzaw;Lcom/google/android/gms/measurement/internal/zzif;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzaw;->zzc:Ljava/lang/Runnable;

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/measurement/internal/zzaw;J)V
    .locals 0

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzaw;->zzd:J

    return-void
.end method

.method private final zzd()Landroid/os/Handler;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzaw;->zza:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    sget-object p0, Lcom/google/android/gms/measurement/internal/zzaw;->zza:Landroid/os/Handler;

    return-object p0

    .line 3
    :cond_0
    const-class v0, Lcom/google/android/gms/measurement/internal/zzaw;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzaw;->zza:Landroid/os/Handler;

    if-nez v1, :cond_1

    .line 5
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzcp;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzaw;->zzb:Lcom/google/android/gms/measurement/internal/zzif;

    invoke-interface {p0}, Lcom/google/android/gms/measurement/internal/zzif;->zza()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/measurement/zzcp;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/google/android/gms/measurement/internal/zzaw;->zza:Landroid/os/Handler;

    .line 6
    :cond_1
    sget-object p0, Lcom/google/android/gms/measurement/internal/zzaw;->zza:Landroid/os/Handler;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method final zza()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 13
    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzaw;->zzd:J

    .line 14
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzaw;->zzd()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzaw;->zzc:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zza(J)V
    .locals 2

    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzaw;->zza()V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzaw;->zzb:Lcom/google/android/gms/measurement/internal/zzif;

    invoke-interface {v0}, Lcom/google/android/gms/measurement/internal/zzif;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzaw;->zzd:J

    .line 19
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzaw;->zzd()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzaw;->zzc:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 21
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzaw;->zzb:Lcom/google/android/gms/measurement/internal/zzif;

    .line 22
    invoke-interface {p0}, Lcom/google/android/gms/measurement/internal/zzif;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p0

    .line 23
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p0

    const-string v0, "Failed to schedule delayed post. time"

    .line 24
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public abstract zzb()V
.end method

.method public final zzc()Z
    .locals 4

    .line 26
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzaw;->zzd:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
