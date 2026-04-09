.class final Lcom/baseflow/permissionhandler/ServiceManager;
.super Ljava/lang/Object;
.source "ServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baseflow/permissionhandler/ServiceManager$SuccessCallback;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getCallAppsList(Landroid/content/pm/PackageManager;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 169
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.intent.action.CALL"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 170
    const-string/jumbo v0, "tel:123123"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 172
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    const-wide/16 v0, 0x0

    .line 173
    invoke-static {v0, v1}, Lcom/tekartik/sqflite/Database$$ExternalSyntheticApiModelOutline0;->m(J)Landroid/content/pm/PackageManager$ResolveInfoFlags;

    move-result-object v0

    invoke-static {p1, p0, v0}, Lcom/tekartik/sqflite/Database$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 175
    invoke-virtual {p1, p0, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private isBluetoothServiceEnabled(Landroid/content/Context;)Z
    .locals 0

    .line 160
    const-string p0, "bluetooth"

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/bluetooth/BluetoothManager;

    .line 161
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p0

    .line 162
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result p0

    return p0
.end method

.method private static isLocationServiceEnablePreKitKat(Landroid/content/Context;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private isLocationServiceEnabled(Landroid/content/Context;)Z
    .locals 0

    .line 103
    const-class p0, Landroid/location/LocationManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/LocationManager;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 108
    :cond_0
    invoke-virtual {p0}, Landroid/location/LocationManager;->isLocationEnabled()Z

    move-result p0

    return p0
.end method

.method private static isLocationServiceEnabledKitKat(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    .line 129
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "location_mode"

    .line 128
    invoke-static {p0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception p0

    .line 132
    invoke-virtual {p0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    return v0
.end method


# virtual methods
.method checkServiceStatus(ILandroid/content/Context;Lcom/baseflow/permissionhandler/ServiceManager$SuccessCallback;Lcom/baseflow/permissionhandler/ErrorCallback;)V
    .locals 3

    if-nez p2, :cond_0

    .line 35
    const-string p0, "permissions_handler"

    const-string p1, "Context cannot be null."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    const-string p0, "PermissionHandler.ServiceManager"

    const-string p1, "Android context cannot be null."

    invoke-interface {p4, p0, p1}, Lcom/baseflow/permissionhandler/ErrorCallback;->onError(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 p4, 0x3

    if-eq p1, p4, :cond_a

    const/4 p4, 0x4

    if-eq p1, p4, :cond_a

    const/4 p4, 0x5

    if-ne p1, p4, :cond_1

    goto :goto_1

    :cond_1
    const/16 v0, 0x15

    if-ne p1, v0, :cond_2

    .line 51
    invoke-direct {p0, p2}, Lcom/baseflow/permissionhandler/ServiceManager;->isBluetoothServiceEnabled(Landroid/content/Context;)Z

    move-result p0

    .line 55
    invoke-interface {p3, p0}, Lcom/baseflow/permissionhandler/ServiceManager$SuccessCallback;->onSuccess(I)V

    return-void

    :cond_2
    const/16 v0, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne p1, v0, :cond_8

    .line 60
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 61
    const-string v0, "android.hardware.telephony"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 62
    invoke-interface {p3, v2}, Lcom/baseflow/permissionhandler/ServiceManager$SuccessCallback;->onSuccess(I)V

    return-void

    .line 66
    :cond_3
    const-string v0, "phone"

    .line 67
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/TelephonyManager;

    if-eqz p2, :cond_7

    .line 69
    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    .line 74
    :cond_4
    invoke-direct {p0, p1}, Lcom/baseflow/permissionhandler/ServiceManager;->getCallAppsList(Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object p0

    .line 76
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_5

    .line 77
    invoke-interface {p3, v2}, Lcom/baseflow/permissionhandler/ServiceManager$SuccessCallback;->onSuccess(I)V

    return-void

    .line 81
    :cond_5
    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result p0

    if-eq p0, p4, :cond_6

    const/4 p0, 0x0

    .line 82
    invoke-interface {p3, p0}, Lcom/baseflow/permissionhandler/ServiceManager$SuccessCallback;->onSuccess(I)V

    return-void

    .line 86
    :cond_6
    invoke-interface {p3, v1}, Lcom/baseflow/permissionhandler/ServiceManager$SuccessCallback;->onSuccess(I)V

    return-void

    .line 70
    :cond_7
    :goto_0
    invoke-interface {p3, v2}, Lcom/baseflow/permissionhandler/ServiceManager$SuccessCallback;->onSuccess(I)V

    return-void

    :cond_8
    const/16 p0, 0x10

    if-ne p1, p0, :cond_9

    .line 94
    invoke-interface {p3, v1}, Lcom/baseflow/permissionhandler/ServiceManager$SuccessCallback;->onSuccess(I)V

    return-void

    .line 98
    :cond_9
    invoke-interface {p3, v2}, Lcom/baseflow/permissionhandler/ServiceManager$SuccessCallback;->onSuccess(I)V

    return-void

    .line 43
    :cond_a
    :goto_1
    invoke-direct {p0, p2}, Lcom/baseflow/permissionhandler/ServiceManager;->isLocationServiceEnabled(Landroid/content/Context;)Z

    move-result p0

    .line 47
    invoke-interface {p3, p0}, Lcom/baseflow/permissionhandler/ServiceManager$SuccessCallback;->onSuccess(I)V

    return-void
.end method
