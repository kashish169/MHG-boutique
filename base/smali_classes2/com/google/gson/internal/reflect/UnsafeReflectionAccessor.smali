.class final Lcom/google/gson/internal/reflect/UnsafeReflectionAccessor;
.super Lcom/google/gson/internal/reflect/ReflectionAccessor;
.source "UnsafeReflectionAccessor.java"


# static fields
.field private static unsafeClass:Ljava/lang/Class;


# instance fields
.field private final overrideField:Ljava/lang/reflect/Field;

.field private final theUnsafe:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/google/gson/internal/reflect/ReflectionAccessor;-><init>()V

    .line 34
    invoke-static {}, Lcom/google/gson/internal/reflect/UnsafeReflectionAccessor;->getUnsafeInstance()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gson/internal/reflect/UnsafeReflectionAccessor;->theUnsafe:Ljava/lang/Object;

    .line 35
    invoke-static {}, Lcom/google/gson/internal/reflect/UnsafeReflectionAccessor;->getOverrideField()Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gson/internal/reflect/UnsafeReflectionAccessor;->overrideField:Ljava/lang/reflect/Field;

    return-void
.end method

.method private static getOverrideField()Ljava/lang/reflect/Field;
    .locals 2

    .line 81
    :try_start_0
    const-class v0, Ljava/lang/reflect/AccessibleObject;

    const-string v1, "override"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getUnsafeInstance()Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    .line 70
    :try_start_0
    const-string v1, "sun.misc.Unsafe"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/google/gson/internal/reflect/UnsafeReflectionAccessor;->unsafeClass:Ljava/lang/Class;

    .line 71
    const-string v2, "theUnsafe"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    .line 72
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 73
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method


# virtual methods
.method public makeAccessible(Ljava/lang/reflect/AccessibleObject;)V
    .locals 3

    .line 40
    invoke-virtual {p0, p1}, Lcom/google/gson/internal/reflect/UnsafeReflectionAccessor;->makeAccessibleWithUnsafe(Ljava/lang/reflect/AccessibleObject;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    .line 44
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 46
    new-instance v0, Lcom/google/gson/JsonIOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Gson couldn\'t modify fields for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\nand sun.misc.Unsafe not found.\nEither write a custom type adapter, or make fields accessible, or include sun.misc.Unsafe."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method makeAccessibleWithUnsafe(Ljava/lang/reflect/AccessibleObject;)Z
    .locals 6

    .line 55
    iget-object v0, p0, Lcom/google/gson/internal/reflect/UnsafeReflectionAccessor;->theUnsafe:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/gson/internal/reflect/UnsafeReflectionAccessor;->overrideField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    .line 57
    :try_start_0
    sget-object v0, Lcom/google/gson/internal/reflect/UnsafeReflectionAccessor;->unsafeClass:Ljava/lang/Class;

    const-string v1, "objectFieldOffset"

    const-class v2, Ljava/lang/reflect/Field;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 58
    iget-object v1, p0, Lcom/google/gson/internal/reflect/UnsafeReflectionAccessor;->theUnsafe:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/gson/internal/reflect/UnsafeReflectionAccessor;->overrideField:Ljava/lang/reflect/Field;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 59
    sget-object v1, Lcom/google/gson/internal/reflect/UnsafeReflectionAccessor;->unsafeClass:Ljava/lang/Class;

    const-string v2, "putBoolean"

    const-class v3, Ljava/lang/Object;

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v3, v4, v5}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 60
    iget-object p0, p0, Lcom/google/gson/internal/reflect/UnsafeReflectionAccessor;->theUnsafe:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    filled-new-array {p1, v0, v3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return p0
.end method
