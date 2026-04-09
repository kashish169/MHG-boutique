.class final Lcom/google/android/recaptcha/internal/zzlv;
.super Ljava/lang/Object;
.source "com.google.android.recaptcha:recaptcha@@18.4.0"


# static fields
.field static final zza:J

.field static final zzb:Z

.field private static final zzc:Lsun/misc/Unsafe;

.field private static final zzd:Ljava/lang/Class;

.field private static final zze:Z

.field private static final zzf:Lcom/google/android/recaptcha/internal/zzlu;

.field private static final zzg:Z

.field private static final zzh:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    invoke-static {}, Lcom/google/android/recaptcha/internal/zzlv;->zzg()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/google/android/recaptcha/internal/zzlv;->zzc:Lsun/misc/Unsafe;

    .line 2
    sget v1, Lcom/google/android/recaptcha/internal/zzgi;->zza:I

    const-class v1, Llibcore/io/Memory;

    sput-object v1, Lcom/google/android/recaptcha/internal/zzlv;->zzd:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 3
    invoke-static {v1}, Lcom/google/android/recaptcha/internal/zzlv;->zzv(Ljava/lang/Class;)Z

    move-result v1

    sput-boolean v1, Lcom/google/android/recaptcha/internal/zzlv;->zze:Z

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 4
    invoke-static {v2}, Lcom/google/android/recaptcha/internal/zzlv;->zzv(Ljava/lang/Class;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 7
    new-instance v3, Lcom/google/android/recaptcha/internal/zzlt;

    invoke-direct {v3, v0}, Lcom/google/android/recaptcha/internal/zzlt;-><init>(Lsun/misc/Unsafe;)V

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    new-instance v3, Lcom/google/android/recaptcha/internal/zzls;

    invoke-direct {v3, v0}, Lcom/google/android/recaptcha/internal/zzls;-><init>(Lsun/misc/Unsafe;)V

    .line 4
    :cond_2
    :goto_0
    sput-object v3, Lcom/google/android/recaptcha/internal/zzlv;->zzf:Lcom/google/android/recaptcha/internal/zzlu;

    const-string v0, "getLong"

    const-string v1, "objectFieldOffset"

    const/4 v2, 0x1

    const/4 v4, 0x0

    if-nez v3, :cond_3

    :goto_1
    move v3, v4

    goto :goto_2

    .line 17
    :cond_3
    iget-object v3, v3, Lcom/google/android/recaptcha/internal/zzlu;->zza:Lsun/misc/Unsafe;

    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v5, Ljava/lang/reflect/Field;

    filled-new-array {v5}, [Ljava/lang/Class;

    move-result-object v5

    .line 5
    invoke-virtual {v3, v1, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-class v5, Ljava/lang/Object;

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    filled-new-array {v5, v6}, [Ljava/lang/Class;

    move-result-object v5

    .line 6
    invoke-virtual {v3, v0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 7
    invoke-static {}, Lcom/google/android/recaptcha/internal/zzlv;->zzB()Ljava/lang/reflect/Field;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    move v3, v2

    goto :goto_2

    :catchall_0
    move-exception v3

    .line 8
    invoke-static {v3}, Lcom/google/android/recaptcha/internal/zzlv;->zzh(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 4
    :goto_2
    sput-boolean v3, Lcom/google/android/recaptcha/internal/zzlv;->zzg:Z

    sget-object v3, Lcom/google/android/recaptcha/internal/zzlv;->zzf:Lcom/google/android/recaptcha/internal/zzlu;

    if-nez v3, :cond_5

    :goto_3
    move v0, v4

    goto/16 :goto_4

    .line 34
    :cond_5
    iget-object v3, v3, Lcom/google/android/recaptcha/internal/zzlu;->zza:Lsun/misc/Unsafe;

    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v5, Ljava/lang/reflect/Field;

    filled-new-array {v5}, [Ljava/lang/Class;

    move-result-object v5

    .line 9
    invoke-virtual {v3, v1, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v1, "arrayBaseOffset"

    const-class v5, Ljava/lang/Class;

    filled-new-array {v5}, [Ljava/lang/Class;

    move-result-object v5

    .line 10
    invoke-virtual {v3, v1, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v1, "arrayIndexScale"

    const-class v5, Ljava/lang/Class;

    filled-new-array {v5}, [Ljava/lang/Class;

    move-result-object v5

    .line 11
    invoke-virtual {v3, v1, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v1, "getInt"

    const-class v5, Ljava/lang/Object;

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    filled-new-array {v5, v6}, [Ljava/lang/Class;

    move-result-object v5

    .line 12
    invoke-virtual {v3, v1, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v1, "putInt"

    const-class v5, Ljava/lang/Object;

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v5, v6, v7}, [Ljava/lang/Class;

    move-result-object v5

    .line 13
    invoke-virtual {v3, v1, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-class v1, Ljava/lang/Object;

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    filled-new-array {v1, v5}, [Ljava/lang/Class;

    move-result-object v1

    .line 14
    invoke-virtual {v3, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v0, "putLong"

    const-class v1, Ljava/lang/Object;

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    filled-new-array {v1, v5, v6}, [Ljava/lang/Class;

    move-result-object v1

    .line 15
    invoke-virtual {v3, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v0, "getObject"

    const-class v1, Ljava/lang/Object;

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    filled-new-array {v1, v5}, [Ljava/lang/Class;

    move-result-object v1

    .line 16
    invoke-virtual {v3, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v0, "putObject"

    const-class v1, Ljava/lang/Object;

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v6, Ljava/lang/Object;

    filled-new-array {v1, v5, v6}, [Ljava/lang/Class;

    move-result-object v1

    .line 17
    invoke-virtual {v3, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v0, v2

    goto :goto_4

    :catchall_1
    move-exception v0

    .line 18
    invoke-static {v0}, Lcom/google/android/recaptcha/internal/zzlv;->zzh(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 4
    :goto_4
    sput-boolean v0, Lcom/google/android/recaptcha/internal/zzlv;->zzh:Z

    const-class v0, [B

    .line 19
    invoke-static {v0}, Lcom/google/android/recaptcha/internal/zzlv;->zzz(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/google/android/recaptcha/internal/zzlv;->zza:J

    .line 20
    const-class v0, [Z

    invoke-static {v0}, Lcom/google/android/recaptcha/internal/zzlv;->zzz(Ljava/lang/Class;)I

    .line 21
    invoke-static {v0}, Lcom/google/android/recaptcha/internal/zzlv;->zzA(Ljava/lang/Class;)I

    .line 22
    const-class v0, [I

    invoke-static {v0}, Lcom/google/android/recaptcha/internal/zzlv;->zzz(Ljava/lang/Class;)I

    .line 23
    invoke-static {v0}, Lcom/google/android/recaptcha/internal/zzlv;->zzA(Ljava/lang/Class;)I

    .line 24
    const-class v0, [J

    invoke-static {v0}, Lcom/google/android/recaptcha/internal/zzlv;->zzz(Ljava/lang/Class;)I

    .line 25
    invoke-static {v0}, Lcom/google/android/recaptcha/internal/zzlv;->zzA(Ljava/lang/Class;)I

    .line 26
    const-class v0, [F

    invoke-static {v0}, Lcom/google/android/recaptcha/internal/zzlv;->zzz(Ljava/lang/Class;)I

    .line 27
    invoke-static {v0}, Lcom/google/android/recaptcha/internal/zzlv;->zzA(Ljava/lang/Class;)I

    .line 28
    const-class v0, [D

    invoke-static {v0}, Lcom/google/android/recaptcha/internal/zzlv;->zzz(Ljava/lang/Class;)I

    .line 29
    invoke-static {v0}, Lcom/google/android/recaptcha/internal/zzlv;->zzA(Ljava/lang/Class;)I

    const-class v0, [Ljava/lang/Object;

    .line 30
    invoke-static {v0}, Lcom/google/android/recaptcha/internal/zzlv;->zzz(Ljava/lang/Class;)I

    const-class v0, [Ljava/lang/Object;

    .line 31
    invoke-static {v0}, Lcom/google/android/recaptcha/internal/zzlv;->zzA(Ljava/lang/Class;)I

    .line 32
    invoke-static {}, Lcom/google/android/recaptcha/internal/zzlv;->zzB()Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_6

    sget-object v1, Lcom/google/android/recaptcha/internal/zzlv;->zzf:Lcom/google/android/recaptcha/internal/zzlu;

    if-eqz v1, :cond_6

    iget-object v1, v1, Lcom/google/android/recaptcha/internal/zzlu;->zza:Lsun/misc/Unsafe;

    .line 33
    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 34
    :cond_6
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_7

    goto :goto_5

    :cond_7
    move v2, v4

    :goto_5
    sput-boolean v2, Lcom/google/android/recaptcha/internal/zzlv;->zzb:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static zzA(Ljava/lang/Class;)I
    .locals 1

    .line 1
    sget-boolean v0, Lcom/google/android/recaptcha/internal/zzlv;->zzh:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/recaptcha/internal/zzlv;->zzf:Lcom/google/android/recaptcha/internal/zzlu;

    iget-object v0, v0, Lcom/google/android/recaptcha/internal/zzlu;->zza:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method private static zzB()Ljava/lang/reflect/Field;
    .locals 3

    .line 1
    sget v0, Lcom/google/android/recaptcha/internal/zzgi;->zza:I

    const-class v0, Ljava/nio/Buffer;

    const-string v1, "effectiveDirectAddress"

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/recaptcha/internal/zzlv;->zzC(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-nez v0, :cond_1

    const-class v0, Ljava/nio/Buffer;

    const-string v1, "address"

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/recaptcha/internal/zzlv;->zzC(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method

.method private static zzC(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static zzD(Ljava/lang/Object;JB)V
    .locals 5

    .line 1
    sget-object v0, Lcom/google/android/recaptcha/internal/zzlv;->zzf:Lcom/google/android/recaptcha/internal/zzlu;

    iget-object v1, v0, Lcom/google/android/recaptcha/internal/zzlu;->zza:Lsun/misc/Unsafe;

    const-wide/16 v2, -0x4

    and-long/2addr v2, p1

    invoke-virtual {v1, p0, v2, v3}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    long-to-int p1, p1

    not-int p1, p1

    and-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x3

    const/16 p2, 0xff

    shl-int v4, p2, p1

    not-int v4, v4

    and-int/2addr v1, v4

    iget-object v0, v0, Lcom/google/android/recaptcha/internal/zzlu;->zza:Lsun/misc/Unsafe;

    and-int/2addr p2, p3

    shl-int p1, p2, p1

    or-int/2addr p1, v1

    .line 2
    invoke-virtual {v0, p0, v2, v3, p1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return-void
.end method

.method private static zzE(Ljava/lang/Object;JB)V
    .locals 5

    .line 1
    sget-object v0, Lcom/google/android/recaptcha/internal/zzlv;->zzf:Lcom/google/android/recaptcha/internal/zzlu;

    iget-object v1, v0, Lcom/google/android/recaptcha/internal/zzlu;->zza:Lsun/misc/Unsafe;

    const-wide/16 v2, -0x4

    and-long/2addr v2, p1

    invoke-virtual {v1, p0, v2, v3}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    long-to-int p1, p1

    and-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x3

    const/16 p2, 0xff

    shl-int v4, p2, p1

    not-int v4, v4

    and-int/2addr v1, v4

    iget-object v0, v0, Lcom/google/android/recaptcha/internal/zzlu;->zza:Lsun/misc/Unsafe;

    and-int/2addr p2, p3

    shl-int p1, p2, p1

    or-int/2addr p1, v1

    .line 2
    invoke-virtual {v0, p0, v2, v3, p1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return-void
.end method

.method static zza(Ljava/lang/Object;J)D
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/recaptcha/internal/zzlv;->zzf:Lcom/google/android/recaptcha/internal/zzlu;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/recaptcha/internal/zzlu;->zza(Ljava/lang/Object;J)D

    move-result-wide p0

    return-wide p0
.end method

.method static zzb(Ljava/lang/Object;J)F
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/recaptcha/internal/zzlv;->zzf:Lcom/google/android/recaptcha/internal/zzlu;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/recaptcha/internal/zzlu;->zzb(Ljava/lang/Object;J)F

    move-result p0

    return p0
.end method

.method static zzc(Ljava/lang/Object;J)I
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/recaptcha/internal/zzlv;->zzf:Lcom/google/android/recaptcha/internal/zzlu;

    iget-object v0, v0, Lcom/google/android/recaptcha/internal/zzlu;->zza:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result p0

    return p0
.end method

.method static zzd(Ljava/lang/Object;J)J
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/recaptcha/internal/zzlv;->zzf:Lcom/google/android/recaptcha/internal/zzlu;

    iget-object v0, v0, Lcom/google/android/recaptcha/internal/zzlu;->zza:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide p0

    return-wide p0
.end method

.method static zze(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Lcom/google/android/recaptcha/internal/zzlv;->zzc:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    .line 2
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method static zzf(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/recaptcha/internal/zzlv;->zzf:Lcom/google/android/recaptcha/internal/zzlu;

    iget-object v0, v0, Lcom/google/android/recaptcha/internal/zzlu;->zza:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static zzg()Lsun/misc/Unsafe;
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Lcom/google/android/recaptcha/internal/zzlr;

    invoke-direct {v0}, Lcom/google/android/recaptcha/internal/zzlr;-><init>()V

    .line 2
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/Unsafe;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method static bridge synthetic zzh(Ljava/lang/Throwable;)V
    .locals 4

    .line 1
    const-class v0, Lcom/google/android/recaptcha/internal/zzlv;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "platform method missing - proto runtime falling back to safer methods: "

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "com.google.protobuf.UnsafeUtil"

    const-string v3, "logMissingMethod"

    .line 2
    invoke-virtual {v0, v1, v2, v3, p0}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic zzi(Ljava/lang/Object;JZ)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/recaptcha/internal/zzlv;->zzD(Ljava/lang/Object;JB)V

    return-void
.end method

.method static synthetic zzj(Ljava/lang/Object;JZ)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/recaptcha/internal/zzlv;->zzE(Ljava/lang/Object;JB)V

    return-void
.end method

.method static bridge synthetic zzk(Ljava/lang/Object;JB)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/recaptcha/internal/zzlv;->zzD(Ljava/lang/Object;JB)V

    return-void
.end method

.method static bridge synthetic zzl(Ljava/lang/Object;JB)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/recaptcha/internal/zzlv;->zzE(Ljava/lang/Object;JB)V

    return-void
.end method

.method static zzm(Ljava/lang/Object;JZ)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/recaptcha/internal/zzlv;->zzf:Lcom/google/android/recaptcha/internal/zzlu;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/android/recaptcha/internal/zzlu;->zzc(Ljava/lang/Object;JZ)V

    return-void
.end method

.method static zzn([BJB)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/recaptcha/internal/zzlv;->zzf:Lcom/google/android/recaptcha/internal/zzlu;

    sget-wide v1, Lcom/google/android/recaptcha/internal/zzlv;->zza:J

    add-long/2addr v1, p1

    invoke-virtual {v0, p0, v1, v2, p3}, Lcom/google/android/recaptcha/internal/zzlu;->zzd(Ljava/lang/Object;JB)V

    return-void
.end method

.method static zzo(Ljava/lang/Object;JD)V
    .locals 6

    .line 1
    sget-object v0, Lcom/google/android/recaptcha/internal/zzlv;->zzf:Lcom/google/android/recaptcha/internal/zzlu;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/recaptcha/internal/zzlu;->zze(Ljava/lang/Object;JD)V

    return-void
.end method

.method static zzp(Ljava/lang/Object;JF)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/recaptcha/internal/zzlv;->zzf:Lcom/google/android/recaptcha/internal/zzlu;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/android/recaptcha/internal/zzlu;->zzf(Ljava/lang/Object;JF)V

    return-void
.end method

.method static zzq(Ljava/lang/Object;JI)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/recaptcha/internal/zzlv;->zzf:Lcom/google/android/recaptcha/internal/zzlu;

    iget-object v0, v0, Lcom/google/android/recaptcha/internal/zzlu;->zza:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2, p3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return-void
.end method

.method static zzr(Ljava/lang/Object;JJ)V
    .locals 7

    .line 1
    sget-object v0, Lcom/google/android/recaptcha/internal/zzlv;->zzf:Lcom/google/android/recaptcha/internal/zzlu;

    iget-object v1, v0, Lcom/google/android/recaptcha/internal/zzlu;->zza:Lsun/misc/Unsafe;

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    return-void
.end method

.method static zzs(Ljava/lang/Object;JLjava/lang/Object;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/recaptcha/internal/zzlv;->zzf:Lcom/google/android/recaptcha/internal/zzlu;

    iget-object v0, v0, Lcom/google/android/recaptcha/internal/zzlu;->zza:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method static bridge synthetic zzt(Ljava/lang/Object;J)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/recaptcha/internal/zzlv;->zzf:Lcom/google/android/recaptcha/internal/zzlu;

    iget-object v0, v0, Lcom/google/android/recaptcha/internal/zzlu;->zza:Lsun/misc/Unsafe;

    const-wide/16 v1, -0x4

    and-long/2addr v1, p1

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result p0

    not-long p1, p1

    const-wide/16 v0, 0x3

    and-long/2addr p1, v0

    const/4 v0, 0x3

    shl-long/2addr p1, v0

    long-to-int p1, p1

    ushr-int/2addr p0, p1

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static bridge synthetic zzu(Ljava/lang/Object;J)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/recaptcha/internal/zzlv;->zzf:Lcom/google/android/recaptcha/internal/zzlu;

    iget-object v0, v0, Lcom/google/android/recaptcha/internal/zzlu;->zza:Lsun/misc/Unsafe;

    const-wide/16 v1, -0x4

    and-long/2addr v1, p1

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result p0

    const-wide/16 v0, 0x3

    and-long/2addr p1, v0

    const/4 v0, 0x3

    shl-long/2addr p1, v0

    long-to-int p1, p1

    ushr-int/2addr p0, p1

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static zzv(Ljava/lang/Class;)Z
    .locals 5

    .line 1
    const-class v0, [B

    sget v1, Lcom/google/android/recaptcha/internal/zzgi;->zza:I

    :try_start_0
    sget-object v1, Lcom/google/android/recaptcha/internal/zzlv;->zzd:Ljava/lang/Class;

    const-string v2, "peekLong"

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {p0, v3}, [Ljava/lang/Class;

    move-result-object v3

    .line 2
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "pokeLong"

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {p0, v3, v4}, [Ljava/lang/Class;

    move-result-object v3

    .line 3
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "pokeInt"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {p0, v3, v4}, [Ljava/lang/Class;

    move-result-object v3

    .line 4
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "peekInt"

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {p0, v3}, [Ljava/lang/Class;

    move-result-object v3

    .line 5
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "pokeByte"

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    filled-new-array {p0, v3}, [Ljava/lang/Class;

    move-result-object v3

    .line 6
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "peekByte"

    filled-new-array {p0}, [Ljava/lang/Class;

    move-result-object v3

    .line 7
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "pokeByteArray"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {p0, v0, v3, v4}, [Ljava/lang/Class;

    move-result-object v3

    .line 8
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "peekByteArray"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {p0, v0, v3, v4}, [Ljava/lang/Class;

    move-result-object p0

    .line 9
    invoke-virtual {v1, v2, p0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    return p0

    :catchall_0
    const/4 p0, 0x0

    return p0
.end method

.method static zzw(Ljava/lang/Object;J)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/recaptcha/internal/zzlv;->zzf:Lcom/google/android/recaptcha/internal/zzlu;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/recaptcha/internal/zzlu;->zzg(Ljava/lang/Object;J)Z

    move-result p0

    return p0
.end method

.method static zzx()Z
    .locals 1

    sget-boolean v0, Lcom/google/android/recaptcha/internal/zzlv;->zzh:Z

    return v0
.end method

.method static zzy()Z
    .locals 1

    sget-boolean v0, Lcom/google/android/recaptcha/internal/zzlv;->zzg:Z

    return v0
.end method

.method private static zzz(Ljava/lang/Class;)I
    .locals 1

    .line 1
    sget-boolean v0, Lcom/google/android/recaptcha/internal/zzlv;->zzh:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/recaptcha/internal/zzlv;->zzf:Lcom/google/android/recaptcha/internal/zzlu;

    iget-object v0, v0, Lcom/google/android/recaptcha/internal/zzlu;->zza:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method
