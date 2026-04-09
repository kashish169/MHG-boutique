.class public Lcom/dexterous/flutterlocalnotifications/ForegroundService;
.super Landroid/app/Service;
.source "ForegroundService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private static orCombineFlags(Ljava/util/ArrayList;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    .line 43
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    .line 44
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 45
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    or-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    .line 17
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x21

    const-string v0, "com.dexterous.flutterlocalnotifications.ForegroundServiceStartParameter"

    if-lt p2, p3, :cond_0

    .line 18
    const-class p2, Lcom/dexterous/flutterlocalnotifications/ForegroundServiceStartParameter;

    .line 20
    invoke-static {p1, v0, p2}, Lcom/tekartik/sqflite/Database$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/dexterous/flutterlocalnotifications/ForegroundServiceStartParameter;

    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/dexterous/flutterlocalnotifications/ForegroundServiceStartParameter;

    .line 28
    :goto_0
    iget-object p2, p1, Lcom/dexterous/flutterlocalnotifications/ForegroundServiceStartParameter;->notificationData:Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;

    .line 29
    invoke-static {p0, p2}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->createNotification(Landroid/content/Context;Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;)Landroid/app/Notification;

    move-result-object p2

    .line 30
    iget-object p3, p1, Lcom/dexterous/flutterlocalnotifications/ForegroundServiceStartParameter;->foregroundServiceTypes:Ljava/util/ArrayList;

    if-eqz p3, :cond_1

    .line 32
    iget-object p3, p1, Lcom/dexterous/flutterlocalnotifications/ForegroundServiceStartParameter;->notificationData:Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;

    iget-object p3, p3, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->id:Ljava/lang/Integer;

    .line 33
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    iget-object v0, p1, Lcom/dexterous/flutterlocalnotifications/ForegroundServiceStartParameter;->foregroundServiceTypes:Ljava/util/ArrayList;

    .line 35
    invoke-static {v0}, Lcom/dexterous/flutterlocalnotifications/ForegroundService;->orCombineFlags(Ljava/util/ArrayList;)I

    move-result v0

    .line 32
    invoke-virtual {p0, p3, p2, v0}, Lcom/dexterous/flutterlocalnotifications/ForegroundService;->startForeground(ILandroid/app/Notification;I)V

    goto :goto_1

    .line 37
    :cond_1
    iget-object p3, p1, Lcom/dexterous/flutterlocalnotifications/ForegroundServiceStartParameter;->notificationData:Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;

    iget-object p3, p3, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->id:Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p0, p3, p2}, Lcom/dexterous/flutterlocalnotifications/ForegroundService;->startForeground(ILandroid/app/Notification;)V

    .line 39
    :goto_1
    iget p0, p1, Lcom/dexterous/flutterlocalnotifications/ForegroundServiceStartParameter;->startMode:I

    return p0
.end method
