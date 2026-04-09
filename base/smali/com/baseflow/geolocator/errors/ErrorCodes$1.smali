.class synthetic Lcom/baseflow/geolocator/errors/ErrorCodes$1;
.super Ljava/lang/Object;
.source "ErrorCodes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baseflow/geolocator/errors/ErrorCodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$baseflow$geolocator$errors$ErrorCodes:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 12
    invoke-static {}, Lcom/baseflow/geolocator/errors/ErrorCodes;->values()[Lcom/baseflow/geolocator/errors/ErrorCodes;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/baseflow/geolocator/errors/ErrorCodes$1;->$SwitchMap$com$baseflow$geolocator$errors$ErrorCodes:[I

    :try_start_0
    sget-object v1, Lcom/baseflow/geolocator/errors/ErrorCodes;->activityMissing:Lcom/baseflow/geolocator/errors/ErrorCodes;

    invoke-virtual {v1}, Lcom/baseflow/geolocator/errors/ErrorCodes;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/baseflow/geolocator/errors/ErrorCodes$1;->$SwitchMap$com$baseflow$geolocator$errors$ErrorCodes:[I

    sget-object v1, Lcom/baseflow/geolocator/errors/ErrorCodes;->errorWhileAcquiringPosition:Lcom/baseflow/geolocator/errors/ErrorCodes;

    invoke-virtual {v1}, Lcom/baseflow/geolocator/errors/ErrorCodes;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/baseflow/geolocator/errors/ErrorCodes$1;->$SwitchMap$com$baseflow$geolocator$errors$ErrorCodes:[I

    sget-object v1, Lcom/baseflow/geolocator/errors/ErrorCodes;->locationServicesDisabled:Lcom/baseflow/geolocator/errors/ErrorCodes;

    invoke-virtual {v1}, Lcom/baseflow/geolocator/errors/ErrorCodes;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/baseflow/geolocator/errors/ErrorCodes$1;->$SwitchMap$com$baseflow$geolocator$errors$ErrorCodes:[I

    sget-object v1, Lcom/baseflow/geolocator/errors/ErrorCodes;->permissionDefinitionsNotFound:Lcom/baseflow/geolocator/errors/ErrorCodes;

    invoke-virtual {v1}, Lcom/baseflow/geolocator/errors/ErrorCodes;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/baseflow/geolocator/errors/ErrorCodes$1;->$SwitchMap$com$baseflow$geolocator$errors$ErrorCodes:[I

    sget-object v1, Lcom/baseflow/geolocator/errors/ErrorCodes;->permissionDenied:Lcom/baseflow/geolocator/errors/ErrorCodes;

    invoke-virtual {v1}, Lcom/baseflow/geolocator/errors/ErrorCodes;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lcom/baseflow/geolocator/errors/ErrorCodes$1;->$SwitchMap$com$baseflow$geolocator$errors$ErrorCodes:[I

    sget-object v1, Lcom/baseflow/geolocator/errors/ErrorCodes;->permissionRequestInProgress:Lcom/baseflow/geolocator/errors/ErrorCodes;

    invoke-virtual {v1}, Lcom/baseflow/geolocator/errors/ErrorCodes;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method
