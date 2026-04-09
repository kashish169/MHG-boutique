.class public final enum Lcom/baseflow/geolocator/errors/ErrorCodes;
.super Ljava/lang/Enum;
.source "ErrorCodes.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/baseflow/geolocator/errors/ErrorCodes;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/baseflow/geolocator/errors/ErrorCodes;

.field public static final enum activityMissing:Lcom/baseflow/geolocator/errors/ErrorCodes;

.field public static final enum errorWhileAcquiringPosition:Lcom/baseflow/geolocator/errors/ErrorCodes;

.field public static final enum locationServicesDisabled:Lcom/baseflow/geolocator/errors/ErrorCodes;

.field public static final enum permissionDefinitionsNotFound:Lcom/baseflow/geolocator/errors/ErrorCodes;

.field public static final enum permissionDenied:Lcom/baseflow/geolocator/errors/ErrorCodes;

.field public static final enum permissionRequestInProgress:Lcom/baseflow/geolocator/errors/ErrorCodes;


# direct methods
.method private static synthetic $values()[Lcom/baseflow/geolocator/errors/ErrorCodes;
    .locals 6

    .line 3
    sget-object v0, Lcom/baseflow/geolocator/errors/ErrorCodes;->activityMissing:Lcom/baseflow/geolocator/errors/ErrorCodes;

    sget-object v1, Lcom/baseflow/geolocator/errors/ErrorCodes;->errorWhileAcquiringPosition:Lcom/baseflow/geolocator/errors/ErrorCodes;

    sget-object v2, Lcom/baseflow/geolocator/errors/ErrorCodes;->locationServicesDisabled:Lcom/baseflow/geolocator/errors/ErrorCodes;

    sget-object v3, Lcom/baseflow/geolocator/errors/ErrorCodes;->permissionDefinitionsNotFound:Lcom/baseflow/geolocator/errors/ErrorCodes;

    sget-object v4, Lcom/baseflow/geolocator/errors/ErrorCodes;->permissionDenied:Lcom/baseflow/geolocator/errors/ErrorCodes;

    sget-object v5, Lcom/baseflow/geolocator/errors/ErrorCodes;->permissionRequestInProgress:Lcom/baseflow/geolocator/errors/ErrorCodes;

    filled-new-array/range {v0 .. v5}, [Lcom/baseflow/geolocator/errors/ErrorCodes;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lcom/baseflow/geolocator/errors/ErrorCodes;

    const-string v1, "activityMissing"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/baseflow/geolocator/errors/ErrorCodes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baseflow/geolocator/errors/ErrorCodes;->activityMissing:Lcom/baseflow/geolocator/errors/ErrorCodes;

    .line 5
    new-instance v0, Lcom/baseflow/geolocator/errors/ErrorCodes;

    const-string v1, "errorWhileAcquiringPosition"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/baseflow/geolocator/errors/ErrorCodes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baseflow/geolocator/errors/ErrorCodes;->errorWhileAcquiringPosition:Lcom/baseflow/geolocator/errors/ErrorCodes;

    .line 6
    new-instance v0, Lcom/baseflow/geolocator/errors/ErrorCodes;

    const-string v1, "locationServicesDisabled"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/baseflow/geolocator/errors/ErrorCodes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baseflow/geolocator/errors/ErrorCodes;->locationServicesDisabled:Lcom/baseflow/geolocator/errors/ErrorCodes;

    .line 7
    new-instance v0, Lcom/baseflow/geolocator/errors/ErrorCodes;

    const-string v1, "permissionDefinitionsNotFound"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/baseflow/geolocator/errors/ErrorCodes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baseflow/geolocator/errors/ErrorCodes;->permissionDefinitionsNotFound:Lcom/baseflow/geolocator/errors/ErrorCodes;

    .line 8
    new-instance v0, Lcom/baseflow/geolocator/errors/ErrorCodes;

    const-string v1, "permissionDenied"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/baseflow/geolocator/errors/ErrorCodes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baseflow/geolocator/errors/ErrorCodes;->permissionDenied:Lcom/baseflow/geolocator/errors/ErrorCodes;

    .line 9
    new-instance v0, Lcom/baseflow/geolocator/errors/ErrorCodes;

    const-string v1, "permissionRequestInProgress"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/baseflow/geolocator/errors/ErrorCodes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baseflow/geolocator/errors/ErrorCodes;->permissionRequestInProgress:Lcom/baseflow/geolocator/errors/ErrorCodes;

    .line 3
    invoke-static {}, Lcom/baseflow/geolocator/errors/ErrorCodes;->$values()[Lcom/baseflow/geolocator/errors/ErrorCodes;

    move-result-object v0

    sput-object v0, Lcom/baseflow/geolocator/errors/ErrorCodes;->$VALUES:[Lcom/baseflow/geolocator/errors/ErrorCodes;

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

.method public static valueOf(Ljava/lang/String;)Lcom/baseflow/geolocator/errors/ErrorCodes;
    .locals 1

    .line 3
    const-class v0, Lcom/baseflow/geolocator/errors/ErrorCodes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/baseflow/geolocator/errors/ErrorCodes;

    return-object p0
.end method

.method public static values()[Lcom/baseflow/geolocator/errors/ErrorCodes;
    .locals 1

    .line 3
    sget-object v0, Lcom/baseflow/geolocator/errors/ErrorCodes;->$VALUES:[Lcom/baseflow/geolocator/errors/ErrorCodes;

    invoke-virtual {v0}, [Lcom/baseflow/geolocator/errors/ErrorCodes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baseflow/geolocator/errors/ErrorCodes;

    return-object v0
.end method


# virtual methods
.method public toDescription()Ljava/lang/String;
    .locals 1

    .line 31
    sget-object v0, Lcom/baseflow/geolocator/errors/ErrorCodes$1;->$SwitchMap$com$baseflow$geolocator$errors$ErrorCodes:[I

    invoke-virtual {p0}, Lcom/baseflow/geolocator/errors/ErrorCodes;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    .line 45
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0

    .line 43
    :pswitch_0
    const-string p0, "Already listening for location updates. If you want to restart listening please cancel other subscriptions first"

    return-object p0

    .line 41
    :pswitch_1
    const-string p0, "User denied permissions to access the device\'s location."

    return-object p0

    .line 39
    :pswitch_2
    const-string p0, "No location permissions are defined in the manifest. Make sure at least ACCESS_FINE_LOCATION or ACCESS_COARSE_LOCATION are defined in the manifest."

    return-object p0

    .line 37
    :pswitch_3
    const-string p0, "Location services are disabled. To receive location updates the location services should be enabled."

    return-object p0

    .line 35
    :pswitch_4
    const-string p0, "An unexpected error occurred while trying to acquire the device\'s position."

    return-object p0

    .line 33
    :pswitch_5
    const-string p0, "Activity is missing. This might happen when running a certain function from the background that requires a UI element (e.g. requesting permissions or enabling the location services)."

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 12
    sget-object v0, Lcom/baseflow/geolocator/errors/ErrorCodes$1;->$SwitchMap$com$baseflow$geolocator$errors$ErrorCodes:[I

    invoke-virtual {p0}, Lcom/baseflow/geolocator/errors/ErrorCodes;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    .line 26
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0

    .line 24
    :pswitch_0
    const-string p0, "PERMISSION_REQUEST_IN_PROGRESS"

    return-object p0

    .line 22
    :pswitch_1
    const-string p0, "PERMISSION_DENIED"

    return-object p0

    .line 20
    :pswitch_2
    const-string p0, "PERMISSION_DEFINITIONS_NOT_FOUND"

    return-object p0

    .line 18
    :pswitch_3
    const-string p0, "LOCATION_SERVICES_DISABLED"

    return-object p0

    .line 16
    :pswitch_4
    const-string p0, "ERROR_WHILE_ACQUIRING_POSITION"

    return-object p0

    .line 14
    :pswitch_5
    const-string p0, "ACTIVITY_MISSING"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
