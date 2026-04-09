.class public final enum Lcom/baseflow/geolocator/location/LocationAccuracy;
.super Ljava/lang/Enum;
.source "LocationAccuracy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/baseflow/geolocator/location/LocationAccuracy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/baseflow/geolocator/location/LocationAccuracy;

.field public static final enum best:Lcom/baseflow/geolocator/location/LocationAccuracy;

.field public static final enum bestForNavigation:Lcom/baseflow/geolocator/location/LocationAccuracy;

.field public static final enum high:Lcom/baseflow/geolocator/location/LocationAccuracy;

.field public static final enum low:Lcom/baseflow/geolocator/location/LocationAccuracy;

.field public static final enum lowest:Lcom/baseflow/geolocator/location/LocationAccuracy;

.field public static final enum medium:Lcom/baseflow/geolocator/location/LocationAccuracy;


# direct methods
.method private static synthetic $values()[Lcom/baseflow/geolocator/location/LocationAccuracy;
    .locals 6

    .line 3
    sget-object v0, Lcom/baseflow/geolocator/location/LocationAccuracy;->lowest:Lcom/baseflow/geolocator/location/LocationAccuracy;

    sget-object v1, Lcom/baseflow/geolocator/location/LocationAccuracy;->low:Lcom/baseflow/geolocator/location/LocationAccuracy;

    sget-object v2, Lcom/baseflow/geolocator/location/LocationAccuracy;->medium:Lcom/baseflow/geolocator/location/LocationAccuracy;

    sget-object v3, Lcom/baseflow/geolocator/location/LocationAccuracy;->high:Lcom/baseflow/geolocator/location/LocationAccuracy;

    sget-object v4, Lcom/baseflow/geolocator/location/LocationAccuracy;->best:Lcom/baseflow/geolocator/location/LocationAccuracy;

    sget-object v5, Lcom/baseflow/geolocator/location/LocationAccuracy;->bestForNavigation:Lcom/baseflow/geolocator/location/LocationAccuracy;

    filled-new-array/range {v0 .. v5}, [Lcom/baseflow/geolocator/location/LocationAccuracy;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lcom/baseflow/geolocator/location/LocationAccuracy;

    const-string v1, "lowest"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/baseflow/geolocator/location/LocationAccuracy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baseflow/geolocator/location/LocationAccuracy;->lowest:Lcom/baseflow/geolocator/location/LocationAccuracy;

    .line 5
    new-instance v0, Lcom/baseflow/geolocator/location/LocationAccuracy;

    const-string v1, "low"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/baseflow/geolocator/location/LocationAccuracy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baseflow/geolocator/location/LocationAccuracy;->low:Lcom/baseflow/geolocator/location/LocationAccuracy;

    .line 6
    new-instance v0, Lcom/baseflow/geolocator/location/LocationAccuracy;

    const-string v1, "medium"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/baseflow/geolocator/location/LocationAccuracy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baseflow/geolocator/location/LocationAccuracy;->medium:Lcom/baseflow/geolocator/location/LocationAccuracy;

    .line 7
    new-instance v0, Lcom/baseflow/geolocator/location/LocationAccuracy;

    const-string v1, "high"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/baseflow/geolocator/location/LocationAccuracy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baseflow/geolocator/location/LocationAccuracy;->high:Lcom/baseflow/geolocator/location/LocationAccuracy;

    .line 8
    new-instance v0, Lcom/baseflow/geolocator/location/LocationAccuracy;

    const-string v1, "best"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/baseflow/geolocator/location/LocationAccuracy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baseflow/geolocator/location/LocationAccuracy;->best:Lcom/baseflow/geolocator/location/LocationAccuracy;

    .line 9
    new-instance v0, Lcom/baseflow/geolocator/location/LocationAccuracy;

    const-string v1, "bestForNavigation"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/baseflow/geolocator/location/LocationAccuracy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baseflow/geolocator/location/LocationAccuracy;->bestForNavigation:Lcom/baseflow/geolocator/location/LocationAccuracy;

    .line 3
    invoke-static {}, Lcom/baseflow/geolocator/location/LocationAccuracy;->$values()[Lcom/baseflow/geolocator/location/LocationAccuracy;

    move-result-object v0

    sput-object v0, Lcom/baseflow/geolocator/location/LocationAccuracy;->$VALUES:[Lcom/baseflow/geolocator/location/LocationAccuracy;

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

.method public static valueOf(Ljava/lang/String;)Lcom/baseflow/geolocator/location/LocationAccuracy;
    .locals 1

    .line 3
    const-class v0, Lcom/baseflow/geolocator/location/LocationAccuracy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/baseflow/geolocator/location/LocationAccuracy;

    return-object p0
.end method

.method public static values()[Lcom/baseflow/geolocator/location/LocationAccuracy;
    .locals 1

    .line 3
    sget-object v0, Lcom/baseflow/geolocator/location/LocationAccuracy;->$VALUES:[Lcom/baseflow/geolocator/location/LocationAccuracy;

    invoke-virtual {v0}, [Lcom/baseflow/geolocator/location/LocationAccuracy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baseflow/geolocator/location/LocationAccuracy;

    return-object v0
.end method
