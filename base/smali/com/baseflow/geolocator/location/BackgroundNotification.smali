.class public Lcom/baseflow/geolocator/location/BackgroundNotification;
.super Ljava/lang/Object;
.source "BackgroundNotification.java"


# instance fields
.field private builder:Landroidx/core/app/NotificationCompat$Builder;

.field private final channelId:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private final notificationId:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;Lcom/baseflow/geolocator/location/ForegroundNotificationOptions;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/baseflow/geolocator/location/BackgroundNotification;->context:Landroid/content/Context;

    .line 34
    iput-object p3, p0, Lcom/baseflow/geolocator/location/BackgroundNotification;->notificationId:Ljava/lang/Integer;

    .line 35
    iput-object p2, p0, Lcom/baseflow/geolocator/location/BackgroundNotification;->channelId:Ljava/lang/String;

    .line 36
    new-instance p3, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {p3, p1, p2}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 37
    invoke-virtual {p3, p1}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    iput-object p1, p0, Lcom/baseflow/geolocator/location/BackgroundNotification;->builder:Landroidx/core/app/NotificationCompat$Builder;

    const/4 p1, 0x0

    .line 38
    invoke-direct {p0, p4, p1}, Lcom/baseflow/geolocator/location/BackgroundNotification;->updateNotification(Lcom/baseflow/geolocator/location/ForegroundNotificationOptions;Z)V

    return-void
.end method

.method private buildBringToFrontIntent()Landroid/app/PendingIntent;
    .locals 3

    .line 47
    iget-object v0, p0, Lcom/baseflow/geolocator/location/BackgroundNotification;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/baseflow/geolocator/location/BackgroundNotification;->context:Landroid/content/Context;

    .line 48
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10200000

    .line 52
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 57
    iget-object p0, p0, Lcom/baseflow/geolocator/location/BackgroundNotification;->context:Landroid/content/Context;

    const/4 v1, 0x0

    const/high16 v2, 0xc000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v1
.end method

.method private getDrawableId(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/baseflow/geolocator/location/BackgroundNotification;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object p0, p0, Lcom/baseflow/geolocator/location/BackgroundNotification;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, p2, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private updateNotification(Lcom/baseflow/geolocator/location/ForegroundNotificationOptions;Z)V
    .locals 3

    .line 80
    invoke-virtual {p1}, Lcom/baseflow/geolocator/location/ForegroundNotificationOptions;->getNotificationIcon()Lcom/baseflow/geolocator/location/AndroidIconResource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baseflow/geolocator/location/AndroidIconResource;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/baseflow/geolocator/location/ForegroundNotificationOptions;->getNotificationIcon()Lcom/baseflow/geolocator/location/AndroidIconResource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baseflow/geolocator/location/AndroidIconResource;->getDefType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/baseflow/geolocator/location/BackgroundNotification;->getDrawableId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 82
    const-string v1, "ic_launcher.png"

    const-string v2, "mipmap"

    invoke-direct {p0, v1, v2}, Lcom/baseflow/geolocator/location/BackgroundNotification;->getDrawableId(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_0
    iget-object v1, p0, Lcom/baseflow/geolocator/location/BackgroundNotification;->builder:Landroidx/core/app/NotificationCompat$Builder;

    .line 86
    invoke-virtual {p1}, Lcom/baseflow/geolocator/location/ForegroundNotificationOptions;->getNotificationTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 87
    invoke-virtual {v1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 88
    invoke-virtual {p1}, Lcom/baseflow/geolocator/location/ForegroundNotificationOptions;->getNotificationText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 89
    invoke-direct {p0}, Lcom/baseflow/geolocator/location/BackgroundNotification;->buildBringToFrontIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 90
    invoke-virtual {p1}, Lcom/baseflow/geolocator/location/ForegroundNotificationOptions;->isSetOngoing()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/baseflow/geolocator/location/BackgroundNotification;->builder:Landroidx/core/app/NotificationCompat$Builder;

    .line 92
    invoke-virtual {p1}, Lcom/baseflow/geolocator/location/ForegroundNotificationOptions;->getColor()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 94
    iget-object v0, p0, Lcom/baseflow/geolocator/location/BackgroundNotification;->builder:Landroidx/core/app/NotificationCompat$Builder;

    .line 95
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setColor(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    iput-object p1, p0, Lcom/baseflow/geolocator/location/BackgroundNotification;->builder:Landroidx/core/app/NotificationCompat$Builder;

    :cond_1
    if-eqz p2, :cond_2

    .line 99
    iget-object p1, p0, Lcom/baseflow/geolocator/location/BackgroundNotification;->context:Landroid/content/Context;

    invoke-static {p1}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object p1

    .line 100
    iget-object p2, p0, Lcom/baseflow/geolocator/location/BackgroundNotification;->notificationId:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-object p0, p0, Lcom/baseflow/geolocator/location/BackgroundNotification;->builder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public build()Landroid/app/Notification;
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/baseflow/geolocator/location/BackgroundNotification;->builder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method public updateChannel(Ljava/lang/String;)V
    .locals 3

    .line 65
    iget-object v0, p0, Lcom/baseflow/geolocator/location/BackgroundNotification;->context:Landroid/content/Context;

    invoke-static {v0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v0

    .line 66
    new-instance v1, Landroid/app/NotificationChannel;

    iget-object p0, p0, Lcom/baseflow/geolocator/location/BackgroundNotification;->channelId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 71
    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 72
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationManagerCompat;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-void
.end method

.method public updateOptions(Lcom/baseflow/geolocator/location/ForegroundNotificationOptions;Z)V
    .locals 0

    .line 105
    invoke-direct {p0, p1, p2}, Lcom/baseflow/geolocator/location/BackgroundNotification;->updateNotification(Lcom/baseflow/geolocator/location/ForegroundNotificationOptions;Z)V

    return-void
.end method
