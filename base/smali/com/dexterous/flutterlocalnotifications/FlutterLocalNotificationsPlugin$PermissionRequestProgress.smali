.class final enum Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$PermissionRequestProgress;
.super Ljava/lang/Enum;
.source "FlutterLocalNotificationsPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "PermissionRequestProgress"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$PermissionRequestProgress;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$PermissionRequestProgress;

.field public static final enum None:Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$PermissionRequestProgress;

.field public static final enum RequestingExactAlarmsPermission:Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$PermissionRequestProgress;

.field public static final enum RequestingFullScreenIntentPermission:Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$PermissionRequestProgress;

.field public static final enum RequestingNotificationPermission:Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$PermissionRequestProgress;


# direct methods
.method private static synthetic $values()[Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$PermissionRequestProgress;
    .locals 4

    .line 2268
    sget-object v0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$PermissionRequestProgress;->None:Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$PermissionRequestProgress;

    sget-object v1, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$PermissionRequestProgress;->RequestingNotificationPermission:Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$PermissionRequestProgress;

    sget-object v2, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$PermissionRequestProgress;->RequestingExactAlarmsPermission:Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$PermissionRequestProgress;

    sget-object v3, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$PermissionRequestProgress;->RequestingFullScreenIntentPermission:Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$PermissionRequestProgress;

    filled-new-array {v0, v1, v2, v3}, [Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$PermissionRequestProgress;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 2269
    new-instance v0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$PermissionRequestProgress;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$PermissionRequestProgress;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$PermissionRequestProgress;->None:Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$PermissionRequestProgress;

    .line 2270
    new-instance v0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$PermissionRequestProgress;

    const-string v1, "RequestingNotificationPermission"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$PermissionRequestProgress;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$PermissionRequestProgress;->RequestingNotificationPermission:Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$PermissionRequestProgress;

    .line 2271
    new-instance v0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$PermissionRequestProgress;

    const-string v1, "RequestingExactAlarmsPermission"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$PermissionRequestProgress;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$PermissionRequestProgress;->RequestingExactAlarmsPermission:Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$PermissionRequestProgress;

    .line 2272
    new-instance v0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$PermissionRequestProgress;

    const-string v1, "RequestingFullScreenIntentPermission"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$PermissionRequestProgress;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$PermissionRequestProgress;->RequestingFullScreenIntentPermission:Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$PermissionRequestProgress;

    .line 2268
    invoke-static {}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$PermissionRequestProgress;->$values()[Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$PermissionRequestProgress;

    move-result-object v0

    sput-object v0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$PermissionRequestProgress;->$VALUES:[Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$PermissionRequestProgress;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2268
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$PermissionRequestProgress;
    .locals 1

    .line 2268
    const-class v0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$PermissionRequestProgress;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$PermissionRequestProgress;

    return-object p0
.end method

.method public static values()[Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$PermissionRequestProgress;
    .locals 1

    .line 2268
    sget-object v0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$PermissionRequestProgress;->$VALUES:[Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$PermissionRequestProgress;

    invoke-virtual {v0}, [Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$PermissionRequestProgress;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$PermissionRequestProgress;

    return-object v0
.end method
