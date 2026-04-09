.class public final enum Lcom/baseflow/geolocator/permission/LocationPermission;
.super Ljava/lang/Enum;
.source "LocationPermission.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/baseflow/geolocator/permission/LocationPermission;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/baseflow/geolocator/permission/LocationPermission;

.field public static final enum always:Lcom/baseflow/geolocator/permission/LocationPermission;

.field public static final enum denied:Lcom/baseflow/geolocator/permission/LocationPermission;

.field public static final enum deniedForever:Lcom/baseflow/geolocator/permission/LocationPermission;

.field public static final enum whileInUse:Lcom/baseflow/geolocator/permission/LocationPermission;


# direct methods
.method private static synthetic $values()[Lcom/baseflow/geolocator/permission/LocationPermission;
    .locals 4

    .line 3
    sget-object v0, Lcom/baseflow/geolocator/permission/LocationPermission;->denied:Lcom/baseflow/geolocator/permission/LocationPermission;

    sget-object v1, Lcom/baseflow/geolocator/permission/LocationPermission;->deniedForever:Lcom/baseflow/geolocator/permission/LocationPermission;

    sget-object v2, Lcom/baseflow/geolocator/permission/LocationPermission;->whileInUse:Lcom/baseflow/geolocator/permission/LocationPermission;

    sget-object v3, Lcom/baseflow/geolocator/permission/LocationPermission;->always:Lcom/baseflow/geolocator/permission/LocationPermission;

    filled-new-array {v0, v1, v2, v3}, [Lcom/baseflow/geolocator/permission/LocationPermission;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 5
    new-instance v0, Lcom/baseflow/geolocator/permission/LocationPermission;

    const-string v1, "denied"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/baseflow/geolocator/permission/LocationPermission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baseflow/geolocator/permission/LocationPermission;->denied:Lcom/baseflow/geolocator/permission/LocationPermission;

    .line 9
    new-instance v0, Lcom/baseflow/geolocator/permission/LocationPermission;

    const-string v1, "deniedForever"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/baseflow/geolocator/permission/LocationPermission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baseflow/geolocator/permission/LocationPermission;->deniedForever:Lcom/baseflow/geolocator/permission/LocationPermission;

    .line 12
    new-instance v0, Lcom/baseflow/geolocator/permission/LocationPermission;

    const-string/jumbo v1, "whileInUse"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/baseflow/geolocator/permission/LocationPermission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baseflow/geolocator/permission/LocationPermission;->whileInUse:Lcom/baseflow/geolocator/permission/LocationPermission;

    .line 15
    new-instance v0, Lcom/baseflow/geolocator/permission/LocationPermission;

    const-string v1, "always"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/baseflow/geolocator/permission/LocationPermission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baseflow/geolocator/permission/LocationPermission;->always:Lcom/baseflow/geolocator/permission/LocationPermission;

    .line 3
    invoke-static {}, Lcom/baseflow/geolocator/permission/LocationPermission;->$values()[Lcom/baseflow/geolocator/permission/LocationPermission;

    move-result-object v0

    sput-object v0, Lcom/baseflow/geolocator/permission/LocationPermission;->$VALUES:[Lcom/baseflow/geolocator/permission/LocationPermission;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baseflow/geolocator/permission/LocationPermission;
    .locals 1

    .line 3
    const-class v0, Lcom/baseflow/geolocator/permission/LocationPermission;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/baseflow/geolocator/permission/LocationPermission;

    return-object p0
.end method

.method public static values()[Lcom/baseflow/geolocator/permission/LocationPermission;
    .locals 1

    .line 3
    sget-object v0, Lcom/baseflow/geolocator/permission/LocationPermission;->$VALUES:[Lcom/baseflow/geolocator/permission/LocationPermission;

    invoke-virtual {v0}, [Lcom/baseflow/geolocator/permission/LocationPermission;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baseflow/geolocator/permission/LocationPermission;

    return-object v0
.end method


# virtual methods
.method public toInt()I
    .locals 2

    .line 18
    sget-object v0, Lcom/baseflow/geolocator/permission/LocationPermission$1;->$SwitchMap$com$baseflow$geolocator$permission$LocationPermission:[I

    invoke-virtual {p0}, Lcom/baseflow/geolocator/permission/LocationPermission;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v1, 0x2

    if-eq p0, v1, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v1, 0x4

    if-ne p0, v1, :cond_0

    return v0

    .line 28
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0

    :cond_1
    return v1

    :cond_2
    return v0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method
