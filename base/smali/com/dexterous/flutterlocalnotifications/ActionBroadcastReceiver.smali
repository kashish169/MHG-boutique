.class public Lcom/dexterous/flutterlocalnotifications/ActionBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ActionBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dexterous/flutterlocalnotifications/ActionBroadcastReceiver$ActionEventSink;
    }
.end annotation


# static fields
.field public static final ACTION_TAPPED:Ljava/lang/String; = "com.dexterous.flutterlocalnotifications.ActionBroadcastReceiver.ACTION_TAPPED"

.field private static final TAG:Ljava/lang/String; = "ActionBroadcastReceiver"

.field private static actionEventSink:Lcom/dexterous/flutterlocalnotifications/ActionBroadcastReceiver$ActionEventSink;

.field private static engine:Lio/flutter/embedding/engine/FlutterEngine;


# instance fields
.field preferences:Lcom/dexterous/flutterlocalnotifications/isolate/IsolatePreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/dexterous/flutterlocalnotifications/isolate/IsolatePreferences;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/dexterous/flutterlocalnotifications/ActionBroadcastReceiver;->preferences:Lcom/dexterous/flutterlocalnotifications/isolate/IsolatePreferences;

    return-void
.end method

.method private initializeEventChannel(Lio/flutter/embedding/engine/dart/DartExecutor;)V
    .locals 1

    .line 106
    new-instance p0, Lio/flutter/plugin/common/EventChannel;

    .line 108
    invoke-virtual {p1}, Lio/flutter/embedding/engine/dart/DartExecutor;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object p1

    const-string v0, "dexterous.com/flutter/local_notifications/actions"

    invoke-direct {p0, p1, v0}, Lio/flutter/plugin/common/EventChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    .line 109
    sget-object p1, Lcom/dexterous/flutterlocalnotifications/ActionBroadcastReceiver;->actionEventSink:Lcom/dexterous/flutterlocalnotifications/ActionBroadcastReceiver$ActionEventSink;

    invoke-virtual {p0, p1}, Lio/flutter/plugin/common/EventChannel;->setStreamHandler(Lio/flutter/plugin/common/EventChannel$StreamHandler;)V

    return-void
.end method

.method private startEngine(Landroid/content/Context;)V
    .locals 3

    .line 75
    sget-object v0, Lcom/dexterous/flutterlocalnotifications/ActionBroadcastReceiver;->engine:Lio/flutter/embedding/engine/FlutterEngine;

    const-string v1, "ActionBroadcastReceiver"

    if-eqz v0, :cond_0

    .line 76
    const-string p0, "Engine is already initialised"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 80
    :cond_0
    invoke-static {}, Lio/flutter/FlutterInjector;->instance()Lio/flutter/FlutterInjector;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Lio/flutter/FlutterInjector;->flutterLoader()Lio/flutter/embedding/engine/loader/FlutterLoader;

    move-result-object v0

    .line 83
    invoke-virtual {v0, p1}, Lio/flutter/embedding/engine/loader/FlutterLoader;->startInitialization(Landroid/content/Context;)V

    const/4 v2, 0x0

    .line 84
    invoke-virtual {v0, p1, v2}, Lio/flutter/embedding/engine/loader/FlutterLoader;->ensureInitializationComplete(Landroid/content/Context;[Ljava/lang/String;)V

    .line 86
    new-instance v2, Lio/flutter/embedding/engine/FlutterEngine;

    invoke-direct {v2, p1}, Lio/flutter/embedding/engine/FlutterEngine;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/dexterous/flutterlocalnotifications/ActionBroadcastReceiver;->engine:Lio/flutter/embedding/engine/FlutterEngine;

    .line 90
    iget-object v2, p0, Lcom/dexterous/flutterlocalnotifications/ActionBroadcastReceiver;->preferences:Lcom/dexterous/flutterlocalnotifications/isolate/IsolatePreferences;

    invoke-virtual {v2}, Lcom/dexterous/flutterlocalnotifications/isolate/IsolatePreferences;->lookupDispatcherHandle()Lio/flutter/view/FlutterCallbackInformation;

    move-result-object v2

    if-nez v2, :cond_1

    .line 92
    const-string p0, "Callback information could not be retrieved"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 96
    :cond_1
    sget-object v1, Lcom/dexterous/flutterlocalnotifications/ActionBroadcastReceiver;->engine:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-virtual {v1}, Lio/flutter/embedding/engine/FlutterEngine;->getDartExecutor()Lio/flutter/embedding/engine/dart/DartExecutor;

    move-result-object v1

    .line 98
    invoke-direct {p0, v1}, Lcom/dexterous/flutterlocalnotifications/ActionBroadcastReceiver;->initializeEventChannel(Lio/flutter/embedding/engine/dart/DartExecutor;)V

    .line 100
    invoke-virtual {v0}, Lio/flutter/embedding/engine/loader/FlutterLoader;->findAppBundlePath()Ljava/lang/String;

    move-result-object p0

    .line 101
    new-instance v0, Lio/flutter/embedding/engine/dart/DartExecutor$DartCallback;

    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    invoke-direct {v0, p1, p0, v2}, Lio/flutter/embedding/engine/dart/DartExecutor$DartCallback;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;Lio/flutter/view/FlutterCallbackInformation;)V

    .line 101
    invoke-virtual {v1, v0}, Lio/flutter/embedding/engine/dart/DartExecutor;->executeDartCallback(Lio/flutter/embedding/engine/dart/DartExecutor$DartCallback;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 46
    const-string v0, "com.dexterous.flutterlocalnotifications.ActionBroadcastReceiver.ACTION_TAPPED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/dexterous/flutterlocalnotifications/ActionBroadcastReceiver;->preferences:Lcom/dexterous/flutterlocalnotifications/isolate/IsolatePreferences;

    if-nez v0, :cond_1

    new-instance v0, Lcom/dexterous/flutterlocalnotifications/isolate/IsolatePreferences;

    invoke-direct {v0, p1}, Lcom/dexterous/flutterlocalnotifications/isolate/IsolatePreferences;-><init>(Landroid/content/Context;)V

    :cond_1
    iput-object v0, p0, Lcom/dexterous/flutterlocalnotifications/ActionBroadcastReceiver;->preferences:Lcom/dexterous/flutterlocalnotifications/isolate/IsolatePreferences;

    .line 53
    invoke-static {p2}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->extractNotificationResponseMap(Landroid/content/Intent;)Ljava/util/Map;

    move-result-object v0

    .line 55
    const-string v1, "cancelNotification"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 56
    const-string p2, "notificationId"

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 57
    const-string v1, "notificationTag"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 59
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 60
    invoke-static {p1}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v2

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1, p2}, Landroidx/core/app/NotificationManagerCompat;->cancel(Ljava/lang/String;I)V

    goto :goto_0

    .line 62
    :cond_2
    invoke-static {p1}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroidx/core/app/NotificationManagerCompat;->cancel(I)V

    .line 66
    :cond_3
    :goto_0
    sget-object p2, Lcom/dexterous/flutterlocalnotifications/ActionBroadcastReceiver;->actionEventSink:Lcom/dexterous/flutterlocalnotifications/ActionBroadcastReceiver$ActionEventSink;

    if-nez p2, :cond_4

    .line 67
    new-instance p2, Lcom/dexterous/flutterlocalnotifications/ActionBroadcastReceiver$ActionEventSink;

    const/4 v1, 0x0

    invoke-direct {p2, v1}, Lcom/dexterous/flutterlocalnotifications/ActionBroadcastReceiver$ActionEventSink;-><init>(Lcom/dexterous/flutterlocalnotifications/ActionBroadcastReceiver$ActionEventSink-IA;)V

    sput-object p2, Lcom/dexterous/flutterlocalnotifications/ActionBroadcastReceiver;->actionEventSink:Lcom/dexterous/flutterlocalnotifications/ActionBroadcastReceiver$ActionEventSink;

    .line 69
    :cond_4
    sget-object p2, Lcom/dexterous/flutterlocalnotifications/ActionBroadcastReceiver;->actionEventSink:Lcom/dexterous/flutterlocalnotifications/ActionBroadcastReceiver$ActionEventSink;

    invoke-virtual {p2, v0}, Lcom/dexterous/flutterlocalnotifications/ActionBroadcastReceiver$ActionEventSink;->addItem(Ljava/util/Map;)V

    .line 71
    invoke-direct {p0, p1}, Lcom/dexterous/flutterlocalnotifications/ActionBroadcastReceiver;->startEngine(Landroid/content/Context;)V

    return-void
.end method
